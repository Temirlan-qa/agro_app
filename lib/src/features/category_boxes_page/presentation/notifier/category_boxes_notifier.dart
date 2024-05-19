import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:agro_app/src/core/enum/product_enums.dart';
import 'package:agro_app/src/core/router/auth_provider.dart';
import 'package:agro_app/src/core/service/injectable/injectable_service.dart';
import 'package:agro_app/src/features/favorites/presentation/notifier/favorites_page_notifier.dart';
import 'package:agro_app/src/features/main_page/presentation/notifier/main_page_notifier.dart';
import 'package:agro_app/src/features/products/domain/entities/product_entity.dart';
import 'package:agro_app/src/features/products/domain/request_model/add_product_to_favorite_request_model.dart';
import 'package:agro_app/src/features/products/domain/request_model/get_product_sub_category_request_model.dart';
import 'package:agro_app/src/features/products/domain/request_model/remove_favorite_product_request_model.dart';
import 'package:agro_app/src/features/products/domain/request_model/search_products_request_model.dart';
import 'package:agro_app/src/features/products/domain/usecases/add_product_to_favorite_use_case.dart';
import 'package:agro_app/src/features/products/domain/usecases/get_product_sub_category_use_case.dart';
import 'package:agro_app/src/features/products/domain/usecases/remove_favorite_product_use_case.dart';
import 'package:agro_app/src/features/products/domain/usecases/search_products_use_case.dart';

import '../category_boxes_page_arguments.dart';
import 'category_boxes_state.dart';

final categoryBoxesNotifierProvider = StateNotifierProvider.autoDispose
    .family<CategoryBoxesNotifier, CategoryBoxesState, BuildContext>(
        (ref, context) {
  final addProductToFavoriteUseCase = getIt<AddProductToFavoriteUseCase>();
  final removeFavoriteProductUseCase = getIt<RemoveFavoriteProductUseCase>();
  final searchProductsUseCase = getIt<SearchProductsUseCase>();
  final getProductsSubCategories = getIt<GetProductSubCategoryUseCase>();
  return CategoryBoxesNotifier(
    ref,
    context,
    addProductToFavoriteUseCase,
    removeFavoriteProductUseCase,
    searchProductsUseCase,
    getProductsSubCategories,
  );
});

class CategoryBoxesNotifier extends StateNotifier<CategoryBoxesState> {
  final Ref _ref;
  final BuildContext _context;

  final AddProductToFavoriteUseCase _addProductToFavoriteUseCase;
  final RemoveFavoriteProductUseCase _removeFavoriteProductUseCase;
  final SearchProductsUseCase _searchProductsUseCase;
  final GetProductSubCategoryUseCase _getProductSubCategoryUseCase;

  final RefreshController _refreshController = RefreshController();
  RefreshController get refreshController => _refreshController;

  CategoryBoxesNotifier(
    this._ref,
    this._context,
    this._addProductToFavoriteUseCase,
    this._removeFavoriteProductUseCase,
    this._searchProductsUseCase,
    this._getProductSubCategoryUseCase,
  ) : super(CategoryBoxesState());

  void init(CategoryBoxesPageArguments? arguments) {
    _handleArguments(arguments);
  }

  Future<void> _handleArguments(CategoryBoxesPageArguments? arguments) async {
    if (arguments == null) {
      return;
    }

    if (arguments.category != null) {
      _handleCategory(arguments.category!);
    } else if (arguments.specialization != null) {
      _handleSpecialization(arguments.specialization!);
    } else if (arguments.productCategory != null) {
      await _handleProductCategory(arguments.productCategory!);
    } else if (arguments.productSubCategory != null) {
      _handleProductSubCategory(arguments.productSubCategory!);
    } else if (arguments.additionalService != null) {
      _handleAdditionalService(arguments.additionalService!);
    }

    _getProducts();
  }

  void _handleCategory(Category category) {
    switch (category) {
      case Category.product:
        state = state.copyWith(
          categories: ProductCategory.values
              .where((element) => element != ProductCategory.none)
              .map((e) => getProductCategoryTitle(e))
              .toList()
            ..sort(
              (a, b) => a.compareTo(b),
            ),
          category: category,
        );
        break;
      case Category.job:
        state = state.copyWith(
          categories: Specialization.values
              .where((element) => element != Specialization.none)
              .map((e) => getSpecializationTitle(e))
              .toList()
            ..sort(
              (a, b) => a.compareTo(b),
            ),
          category: category,
        );
        break;

      case Category.service:
        state = state.copyWith(
          categories: AdditionalService.values
              .where((element) => element != AdditionalService.none)
              .map((e) => getAdditionalServiceTitle(e))
              .toList()
            ..sort(
              (a, b) => a.compareTo(b),
            ),
          category: category,
        );
        break;

      case Category.faq:
      case Category.none:
        break;
    }
    state = state.copyWith(barTitle: getCategoryTitle(category));
  }

  void _handleSpecialization(Specialization specialization) {
    state = state.copyWith(
      categories: [],
      specialization: specialization,
      category: Category.job,
      barTitle: getSpecializationTitle(specialization),
    );
  }

  Future<void> _handleProductCategory(ProductCategory productCategory) async {
    state = state.copyWith(barTitle: getProductCategoryTitle(productCategory));
    final result = await _getProductSubCategoryUseCase(
      GetProductSubCategoryRequestModel(
        productCategory: productCategory,
      ),
    );
    if (result.isSuccessful) {
      state = state.copyWith(
        categories: result.data!.productSubCategories
            .where((element) => element != ProductSubCategory.CUSTOM)
            .map((e) => getProductSubCategoryTitle(e))
            .toList()
          ..sort(
            (a, b) => a.compareTo(b),
          ),
        productCategory: productCategory,
        category: Category.product,
      );
    }
  }

  void _handleProductSubCategory(ProductSubCategory productSubCategory) {
    state = state.copyWith(
      categories: [],
      productSubCategory: productSubCategory,
      category: Category.product,
      barTitle: getProductSubCategoryTitle(productSubCategory),
    );
  }

  void _handleAdditionalService(AdditionalService additionalService) {
    state = state.copyWith(
      categories: [],
      additionalService: additionalService,
      category: Category.service,
      barTitle: getAdditionalServiceTitle(additionalService),
    );
  }

  Future<void> _getProducts() async {
    state = state.copyWith(isLoading: true);
    final result = await _searchProductsUseCase.call(
      SearchProductsRequestModel(
        category: state.category,
        specialization: state.specialization,
        productCategory: state.productCategory,
        productSubCategory: state.productSubCategory,
        additionalService: state.additionalService,
      ),
    );
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
      products: products,
      isLoading: false,
    );
  }

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
    await _getProducts();
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

  void onTap(String category) {
    CategoryBoxesPageArguments? arguments;
    if (state.category != null) {
      switch (state.category!) {
        case Category.product:
          arguments = CategoryBoxesPageArguments(
            productCategory: category.getProductCategory(),
          );
          break;
        case Category.job:
          arguments = CategoryBoxesPageArguments(
            specialization: category.getSpecialization(),
          );
          break;
        case Category.service:
          arguments = CategoryBoxesPageArguments(
            additionalService: category.getAdditionalService(),
          );
          break;
        case Category.faq:
        case Category.none:
          break;
      }
    }
    if (state.productCategory != null) {
      arguments = CategoryBoxesPageArguments(
        productSubCategory: category.getProductSubCategory(),
      );
    }
    Navigator.of(_context).pushNamed(
      '/',
      arguments: arguments,
    );
  }

  void popRoute() {
    if (state.productCategory == null &&
        state.productSubCategory == null &&
        state.specialization == null &&
        state.additionalService == null) {
      _ref.read(mainPageNotifierProvider.notifier).changePage(0);
      return;
    }

    Navigator.pop(_context);
  }
}
