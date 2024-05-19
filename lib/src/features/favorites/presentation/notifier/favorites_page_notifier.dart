import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:agro_app/src/core/router/auth_provider.dart';
import 'package:agro_app/src/core/service/injectable/injectable_service.dart';
import 'package:agro_app/src/features/favorites/presentation/notifier/favorites_page_state.dart';
import 'package:agro_app/src/features/products/domain/entities/product_entity.dart';
import 'package:agro_app/src/features/products/domain/request_model/remove_favorite_product_request_model.dart';
import 'package:agro_app/src/features/products/domain/usecases/get_all_favorite_products_use_case.dart';
import 'package:agro_app/src/features/products/domain/usecases/remove_favorite_product_use_case.dart';
import 'package:agro_app/src/features/products/presentation/notifier/products_page_notifier.dart';

final favoritePageNotifierProvider =
    StateNotifierProvider.autoDispose<FavoritePageNotifier, FavoritesPageState>(
        (ref) {
  final getAllFavoriteProducts = getIt<GetAllFavoriteProductsUseCase>();
  final removeFavoriteProductUseCase = getIt<RemoveFavoriteProductUseCase>();

  return FavoritePageNotifier(
    ref,
    getAllFavoriteProducts,
    removeFavoriteProductUseCase,
  );
});

class FavoritePageNotifier extends StateNotifier<FavoritesPageState> {
  final Ref _ref;
  late final BuildContext _context;

  final GetAllFavoriteProductsUseCase _getAllFavoriteProducts;
  final RemoveFavoriteProductUseCase _removeFavoriteProductUseCase;

  final RefreshController _refreshController = RefreshController();
  RefreshController get refreshController => _refreshController;

  FavoritePageNotifier(
    this._ref,
    this._getAllFavoriteProducts,
    this._removeFavoriteProductUseCase,
  ) : super(FavoritesPageState());

  void init(BuildContext context) {
    _context = context;
    getProducts();
  }

  Future<void> getProducts() async {
    state = state.copyWith(isLoading: true);
    final result = await _getAllFavoriteProducts();
    if (result.isSuccessful) {
      final reversedList = result.data!.data.reversed;
      final products = reversedList.map(
        (e) {
          final product = (e as ProductEntity);
          return product.copyWith(
            isFavorite: true,
            isOwnProduct: _checkIsOwnProduct(product.user?.id),
          );
        },
      ).toList();
      state = state.copyWith(favoriteProducts: products);
    }
    state = state.copyWith(isLoading: false);
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

  Future<void> refreshProducts() async {
    await getProducts();
    _refreshController.refreshCompleted();
  }

  void removeFavorite(String productId) {
    _removeFavorite(productId);
    _ref
        .read(productsPageNotifierProvider.notifier)
        .toggleFavoriteOtherPages(productId: productId, isFavorite: false);
  }

  void _removeFavorite(String favoriteProductId) {
    final updateProducts = List.of(state.favoriteProducts);
    final index = updateProducts.indexWhere(
      (favoriteProduct) => favoriteProduct.id == favoriteProductId,
    );
    final updateProduct = updateProducts[index];

    final requestModel = RemoveFavoriteProductRequestModel(
      id: updateProduct.id,
    );
    _removeFavoriteProductUseCase.call(requestModel).then(
      (result) {
        if (result.isFailure) {}
      },
    );

    updateFavoriteProductList(favoriteProductId);
  }

  void updateFavoriteProductList(String favoriteProductId) {
    final updateFavoriteList = List.of(state.favoriteProducts);
    final index = updateFavoriteList.indexWhere(
      (favoriteProduct) => favoriteProduct.id == favoriteProductId,
    );

    if (index == -1) {
      return;
    }
    updateFavoriteList.removeAt(index);

    state = state.copyWith(favoriteProducts: updateFavoriteList);
  }

  void onBuyProduct() {}

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }
}
