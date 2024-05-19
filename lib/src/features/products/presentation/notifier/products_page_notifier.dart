import 'dart:async';

import 'package:agro_app/src/core/enum/main_screen_tabs.dart';
import 'package:agro_app/src/core/enum/product_enums.dart';
import 'package:agro_app/src/core/router/auth_provider.dart';
import 'package:agro_app/src/core/service/injectable/injectable_service.dart';
import 'package:agro_app/src/core/utils/helpers/debouncer.dart';
import 'package:agro_app/src/features/favorites/presentation/notifier/favorites_page_notifier.dart';
import 'package:agro_app/src/features/main_page/presentation/notifier/main_page_notifier.dart';
import 'package:agro_app/src/features/products/domain/entities/product_entity.dart';
import 'package:agro_app/src/features/products/domain/request_model/add_product_to_favorite_request_model.dart';
import 'package:agro_app/src/features/products/domain/request_model/remove_favorite_product_request_model.dart';
import 'package:agro_app/src/features/products/domain/request_model/search_products_request_model.dart';
import 'package:agro_app/src/features/products/domain/usecases/add_product_to_favorite_use_case.dart';
import 'package:agro_app/src/features/products/domain/usecases/get_all_products_use_case.dart';
import 'package:agro_app/src/features/products/domain/usecases/get_faqs_use_case.dart';
import 'package:agro_app/src/features/products/domain/usecases/remove_favorite_product_use_case.dart';
import 'package:agro_app/src/features/products/domain/usecases/search_products_use_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'products_page_state.dart';

final productsPageNotifierProvider =
    StateNotifierProvider.autoDispose<ProductsPageNotifier, ProductsPageState>(
        (ref) {
  final getProductUseCase = getIt<GetAllProductsUseCase>();
  final addProductToFavoriteUseCase = getIt<AddProductToFavoriteUseCase>();
  final removeFavoriteProductUseCase = getIt<RemoveFavoriteProductUseCase>();
  final searchProductsUseCase = getIt<SearchProductsUseCase>();
  final getFaqsUseCase = getIt<GetFaqsUseCase>();
  return ProductsPageNotifier(
    ref,
    getProductUseCase,
    addProductToFavoriteUseCase,
    removeFavoriteProductUseCase,
    searchProductsUseCase,
    getFaqsUseCase,
  );
});

class ProductsPageNotifier extends StateNotifier<ProductsPageState> {
  final Ref _ref;
  late final BuildContext _context;
  final _debouncer =
      Debouncer(debounceTime: const Duration(milliseconds: 1000));

  final GetAllProductsUseCase _getProductUseCase;
  final AddProductToFavoriteUseCase _addProductToFavoriteUseCase;
  final RemoveFavoriteProductUseCase _removeFavoriteProductUseCase;

  final SearchProductsUseCase _searchProductsUseCase;

  final GetFaqsUseCase _getFaqsUseCase;

  final RefreshController _refreshController = RefreshController();
  RefreshController get refreshController => _refreshController;

  bool _isFilteredList = false;

  ProductsPageNotifier(
    this._ref,
    this._getProductUseCase,
    this._addProductToFavoriteUseCase,
    this._removeFavoriteProductUseCase,
    this._searchProductsUseCase,
    this._getFaqsUseCase,
  ) : super(ProductsPageState());

  void init(BuildContext context) {
    _context = context;
    _initProducts();
    _getFaqs();
  }

  Future<void> _initProducts() async {
    await getProducts();
  }

  Future<void> _getFaqs() async {
    final result = await _getFaqsUseCase.call();
    if (result.isFailure) {
      return;
    }
    state = state.copyWith(faqs: result.data!);
  }

  Future<void> getProducts() async {
    state = state.copyWith(isLoading: true);
    final result = await _getProductUseCase.call();
    if (result.isFailure) {
      state = state.copyWith(isLoading: false);
      return;
    }
    final reversedList = result.data!.data.reversed;
    final products = reversedList
        .map((e) {
          final product = (e as ProductEntity);
          return product.copyWith(
            isOwnProduct: _checkIsOwnProduct(product.user?.id),
          );
        })
        .where((element) => !element.isOwnProduct)
        .toList();

    state = state.copyWith(
      isLoading: false,
      products: products,
    );
  }

  List<ProductEntity> similarProducts(String currentProductId) => state.products
      .where((product) => product.id != currentProductId)
      .toList();

  bool _checkIsOwnProduct(String? userId) {
    if (userId == null) {
      return false;
    }
    final isAuth = _ref.read(authProvider);
    if (!isAuth) {
      return false;
    }
    final currentUserId = _ref.read(authProvider.notifier).user?.id;
    return currentUserId == userId;
  }

  Future<void> refreshProducts() async {
    await getProducts();
    _refreshController.refreshCompleted();
  }

  void favoriteToggle(String productId) {
    final updateProducts = List.of(state.products);
    final index = updateProducts.indexWhere(
      (product) => product.id == productId,
    );
    final updateProduct = updateProducts[index];

    if (updateProduct.isFavorite) {
      final requestModel = RemoveFavoriteProductRequestModel(
        id: productId,
      );
      _removeFavoriteProductUseCase.call(requestModel).then(
        (result) {
          if (result.isSuccessful) {
            _ref.read(favoritePageNotifierProvider.notifier).getProducts();
          }
        },
      );
    } else {
      final requestModel = AddProductToFavoriteRequestModel(
        id: productId,
      );
      _addProductToFavoriteUseCase.call(requestModel).then(
        (result) {
          if (result.isSuccessful) {
            _ref.read(favoritePageNotifierProvider.notifier).getProducts();
          }
        },
      );
    }

    updateProducts[index] = updateProduct.copyWith(
      isFavorite: !updateProduct.isFavorite,
    );
    state = state.copyWith(products: updateProducts);
  }

  void toggleFavoriteOtherPages({
    required String productId,
    required bool isFavorite,
  }) {
    final updateProducts = List.of(state.products);
    final index = updateProducts.indexWhere(
      (product) => product.id == productId,
    );
    final updateProduct = updateProducts[index];

    updateProducts[index] = updateProduct.copyWith(
      isFavorite: isFavorite,
    );
    state = state.copyWith(products: updateProducts);
  }

  void searchProducts(String value) =>
      _debouncer.debounce(() => _searchProducts(value));

  Future<void> _searchProducts(String value) async {
    final trimmedValue = value.trim();
    if (trimmedValue.isEmpty && _isFilteredList) {
      getProducts();
      _isFilteredList = false;
      return;
    }

    state = state.copyWith(isLoading: true);
    _isFilteredList = true;

    final result = await _searchProductsUseCase(
        SearchProductsRequestModel(key: trimmedValue));

    if (result.isFailure) {
      state = state.copyWith(isLoading: false);
      return;
    }

    final reversedList = result.data!.data.reversed;
    final products = reversedList.map((e) {
      final product = (e as ProductEntity);
      return product.copyWith(
        isOwnProduct: _checkIsOwnProduct(product.user?.id),
      );
    }).toList();

    state = state.copyWith(
      isLoading: false,
      products: products,
    );
  }

  void setSelectedCategory(Category category) {
    state = state.copyWith(selectedCategory: category);
    if (category == Category.faq) {
      _getFaqs();
      return;
    }

    if (category != Category.none) {
      _ref.read(mainPageNotifierProvider.notifier).changePage(
            MainScreenTabs.categoryBoxes.index,
            selectedCategory: category,
          );
    }
  }

  @override
  void dispose() {
    _refreshController.dispose();
    _debouncer.dispose();
    super.dispose();
  }
}
