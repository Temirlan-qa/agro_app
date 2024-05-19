import 'package:agro_app/src/core/service/injectable/injectable_service.dart';
import 'package:agro_app/src/features/products/domain/entities/product_entity.dart';
import 'package:agro_app/src/features/products/domain/request_model/delete_product_request_model.dart';
import 'package:agro_app/src/features/products/domain/usecases/delete_product_use_case.dart';
import 'package:agro_app/src/features/products/domain/usecases/get_all_user_products_use_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'user_products_page_state.dart';

final userProductsPageNotifierProvider = StateNotifierProvider.autoDispose<
    UserProductsPageNotifier, UserProductsPageState>((ref) {
  final getAllUserProducts = getIt<GetAllUserProductsUseCase>();
  final deleteProductUseCase = getIt<DeleteProductUseCase>();

  return UserProductsPageNotifier(
    ref,
    getAllUserProducts,
    deleteProductUseCase,
  );
});

class UserProductsPageNotifier extends StateNotifier<UserProductsPageState> {
  final Ref _ref;
  late final BuildContext _context;

  final GetAllUserProductsUseCase _getAllUserProductsUseCase;
  final DeleteProductUseCase _deleteProductUseCase;

  final RefreshController _refreshController = RefreshController();
  RefreshController get refreshController => _refreshController;

  UserProductsPageNotifier(
    this._ref,
    this._getAllUserProductsUseCase,
    this._deleteProductUseCase,
  ) : super(UserProductsPageState());

  void init(BuildContext context) {
    _context = context;
    getProducts();
  }

  Future<void> getProducts() async {
    state = state.copyWith(isLoading: true);
    final result = await _getAllUserProductsUseCase();
    if (result.isSuccessful) {
      final reversedList = result.data!.data.reversed;
      final products = reversedList.map(
        (e) {
          final product = (e as ProductEntity);
          return product.copyWith(
            isOwnProduct: true,
          );
        },
      ).toList();
      state = state.copyWith(userProducts: products);
    }
    state = state.copyWith(isLoading: false);
  }

  Future<void> refreshProducts() async {
    await getProducts();
    _refreshController.refreshCompleted();
  }

  Future<void> deleteProduct(String id) async {
    Navigator.pop(_context);
    final result =
        await _deleteProductUseCase(DeleteProductRequestModel(id: id));
    if (result.isSuccessful) {
      state = state.copyWith(
        userProducts:
            state.userProducts.where((element) => element.id != id).toList(),
      );
    }
  }

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }
}
