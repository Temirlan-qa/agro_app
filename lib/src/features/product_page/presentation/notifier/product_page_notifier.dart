import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:agro_app/src/core/router/auth_provider.dart';
import 'package:agro_app/src/core/service/injectable/injectable_service.dart';
import 'package:agro_app/src/features/favorites/presentation/notifier/favorites_page_notifier.dart';
import 'package:agro_app/src/features/product_page/presentation/notifier/product_page_state.dart';
import 'package:agro_app/src/features/product_page/product_page_arguments.dart';
import 'package:agro_app/src/features/products/domain/entities/product_entity.dart';
import 'package:agro_app/src/features/products/domain/request_model/add_product_to_favorite_request_model.dart';
import 'package:agro_app/src/features/products/domain/request_model/get_product_request_model.dart';
import 'package:agro_app/src/features/products/domain/request_model/remove_favorite_product_request_model.dart';
import 'package:agro_app/src/features/products/domain/usecases/add_product_to_favorite_use_case.dart';
import 'package:agro_app/src/features/products/domain/usecases/get_product_use_case.dart';
import 'package:agro_app/src/features/products/domain/usecases/remove_favorite_product_use_case.dart';
import 'package:agro_app/src/features/products/presentation/notifier/products_page_notifier.dart';

final productPageNotifierProvider =
    StateNotifierProvider.autoDispose<ProductPageNotifier, ProductPageState>(
        (ref) {
  final getProductUseCase = getIt<GetProductUseCase>();
  final addProductToFavoriteUseCase = getIt<AddProductToFavoriteUseCase>();
  final removeFavoriteProductUseCase = getIt<RemoveFavoriteProductUseCase>();
  return ProductPageNotifier(
    ref,
    getProductUseCase,
    addProductToFavoriteUseCase,
    removeFavoriteProductUseCase,
  );
});

class ProductPageNotifier extends StateNotifier<ProductPageState> {
  late final BuildContext _context;
  final Ref _ref;

  final GetProductUseCase _getProductUseCase;

  final AddProductToFavoriteUseCase _addProductToFavoriteUseCase;
  final RemoveFavoriteProductUseCase _removeFavoriteProductUseCase;

  ProductPageNotifier(
    this._ref,
    this._getProductUseCase,
    this._addProductToFavoriteUseCase,
    this._removeFavoriteProductUseCase,
  ) : super(ProductPageState(product: ProductEntity.empty()));

  void init({
    required BuildContext context,
    required ProductPageArgument productArguments,
  }) {
    _context = context;
    _getProductById(productArguments.id);
  }

  Future<void> _getProductById(String productId) async {
    final result = await _getProductUseCase(
      GetProductRequestModel(id: productId),
    );
    if (result.isSuccessful) {
      final isOwnProduct = _checkIsOwnProduct(result.data!.user?.id);
      state = state.copyWith(
        product: result.data!.copyWith(isOwnProduct: isOwnProduct),
      );
    }
  }

  bool _checkIsOwnProduct(String? userId) {
    if (userId == null) {
      return false;
    }
    final isAuth = _ref.read(authProvider);
    if (!isAuth) {
      return false;
    }
    final currentUserId = _ref.read(authProvider.notifier).user!.id;
    return currentUserId == userId;
  }

  void toggleFavorite() {
    final product = state.product;
    if (product.isFavorite) {
      final requestModel = RemoveFavoriteProductRequestModel(
        id: product.id,
      );
      _removeFavoriteProductUseCase.call(requestModel).then(
        (result) {
          if (result.isSuccessful) {
            _ref
                .read(productsPageNotifierProvider.notifier)
                .toggleFavoriteOtherPages(
                    productId: product.id, isFavorite: false);
            _ref.read(favoritePageNotifierProvider.notifier).getProducts();
          }
        },
      );
    } else {
      final requestModel = AddProductToFavoriteRequestModel(
        id: product.id,
      );
      _addProductToFavoriteUseCase.call(requestModel).then(
        (result) {
          if (result.isSuccessful) {
            _ref
                .read(productsPageNotifierProvider.notifier)
                .toggleFavoriteOtherPages(
                    productId: product.id, isFavorite: true);
            _ref.read(favoritePageNotifierProvider.notifier).getProducts();
          }
        },
      );
    }

    state = state.copyWith(
        product: product.copyWith(isFavorite: !product.isFavorite));
  }
}
