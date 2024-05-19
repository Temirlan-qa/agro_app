import 'package:agro_app/src/core/exception/domain_exception.dart';
import 'package:agro_app/src/core/utils/loggers/logger.dart';
import 'package:agro_app/src/features/products/data/data_sources/remote/i_product_remote.dart';
import 'package:agro_app/src/features/products/data/data_sources/remote/product_remote_impl.dart';
import 'package:agro_app/src/features/products/data/mappers/faq_dto_to_entity_mapper.dart';
import 'package:agro_app/src/features/products/data/mappers/pagination_dto_to_entity_mapper.dart';
import 'package:agro_app/src/features/products/data/mappers/product_dto_to_entity_mapper.dart';
import 'package:agro_app/src/features/products/data/models/dto/product_dto.dart';
import 'package:agro_app/src/features/products/domain/entities/faq_entity.dart';
import 'package:agro_app/src/features/products/domain/entities/pagination_entity.dart';
import 'package:agro_app/src/features/products/domain/entities/product_entity.dart';
import 'package:agro_app/src/features/products/domain/entities/product_sub_categories_entity.dart';
import 'package:agro_app/src/features/products/domain/repository/i_product_repository.dart';
import 'package:agro_app/src/features/products/domain/request_model/add_product_to_favorite_request_model.dart';
import 'package:agro_app/src/features/products/domain/request_model/create_product_request_model.dart';
import 'package:agro_app/src/features/products/domain/request_model/delete_product_request_model.dart';
import 'package:agro_app/src/features/products/domain/request_model/get_product_request_model.dart';
import 'package:agro_app/src/features/products/domain/request_model/get_product_sub_category_request_model.dart';
import 'package:agro_app/src/features/products/domain/request_model/remove_favorite_product_request_model.dart';
import 'package:agro_app/src/features/products/domain/request_model/search_products_request_model.dart';
import 'package:agro_app/src/features/products/domain/request_model/update_product_request_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@named
@LazySingleton(as: IProductRepository)
class ProductRepositoryImpl implements IProductRepository {
  final IProductRemote _productImpl;
  ProductRepositoryImpl(@Named.from(ProductRemoteImpl) this._productImpl);

  @override
  Future<Either<DomainException, PaginationEntity>> getAllProducts() async {
    try {
      final result = await _productImpl.getAllProducts();
      return result.fold((error) => Left(error), (paginationDto) {
        final paginationEntity = PaginationDtoMapper().map(paginationDto);
        List<ProductEntity> products = [];
        for (var dto in paginationEntity.data) {
          final productEntity = ProductDtoMapper().map(dto as ProductDto);
          products.add(productEntity);
        }
        return Right(paginationEntity.copyWith(data: products));
      });
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, void>> createProduct(
    CreateProductRequestModel createProductRequestModel,
  ) async {
    try {
      final request =
          await _productImpl.createProduct(createProductRequestModel);
      return request.fold(
        (error) => Left(error),
        (_) => const Right(null),
      );
    } catch (e, s) {
      return Left(
        e is DomainException
            ? e
            : UnknownException(message: e.toString(), stackTrace: s),
      );
    }
  }

  @override
  Future<Either<DomainException, ProductEntity>> getProduct(
    GetProductRequestModel getProductRequestModel,
  ) async {
    try {
      final result = await _productImpl.getProduct(getProductRequestModel);
      return result.fold((error) => Left(error), (productDto) {
        ProductEntity result = ProductDtoMapper().map(productDto);
        return Right(result);
      });
    } catch (e, s) {
      return Left(
        e is DomainException
            ? e
            : UnknownException(message: e.toString(), stackTrace: s),
      );
    }
  }

  @override
  Future<Either<DomainException, void>> deleteProduct(
      DeleteProductRequestModel deleteProduct) async {
    try {
      final request = await _productImpl.deleteProduct(deleteProduct);
      return request.fold((error) => Left(error), (result) {
        return const Right(null);
      });
    } catch (e, s) {
      return Left(
        e is DomainException
            ? e
            : UnknownException(message: e.toString(), stackTrace: s),
      );
    }
  }

  @override
  Future<Either<DomainException, PaginationEntity>> getAllUserProducts() async {
    try {
      final result = await _productImpl.getAllUserProducts();
      return result.fold((error) => Left(error), (paginationDto) {
        final paginationEntity = PaginationDtoMapper().map(paginationDto);
        List<ProductEntity> products = [];
        for (var dto in paginationEntity.data) {
          final productEntity = ProductDtoMapper().map(dto as ProductDto);
          products.add(productEntity);
        }
        return Right(paginationEntity.copyWith(data: products));
      });
    } catch (e, s) {
      return Left(
        e is DomainException
            ? e
            : UnknownException(message: e.toString(), stackTrace: s),
      );
    }
  }

  @override
  Future<Either<DomainException, ProductEntity>> updateProduct(
    UpdateProductRequestModel updateProduct,
  ) async {
    try {
      final result = await _productImpl.updateProduct(updateProduct);
      return result.fold((error) => Left(error), (productDto) {
        ProductEntity result = ProductDtoMapper().map(productDto);
        return Right(result);
      });
    } catch (e, s) {
      return Left(
        e is DomainException
            ? e
            : UnknownException(message: e.toString(), stackTrace: s),
      );
    }
  }

  @override
  Future<Either<DomainException, PaginationEntity>>
      getAllFavoriteProducts() async {
    try {
      final result = await _productImpl.getAllFavoriteProducts();
      return result.fold((error) => Left(error), (paginationDto) {
        final paginationEntity = PaginationDtoMapper().map(paginationDto);
        List<ProductEntity> products = [];
        for (var dto in paginationEntity.data) {
          final productEntity = ProductDtoMapper().map(dto as ProductDto);
          products.add(productEntity);
        }
        return Right(paginationEntity.copyWith(data: products));
      });
    } catch (e, s) {
      return Left(
        e is DomainException
            ? e
            : UnknownException(message: e.toString(), stackTrace: s),
      );
    }
  }

  @override
  Future<Either<DomainException, void>> addProductToFavorite(
      AddProductToFavoriteRequestModel addToFavorite) async {
    try {
      final result = await _productImpl.addToFavorite(addToFavorite);
      return result.fold(
        (error) => Left(error),
        (productDto) {
          return const Right(null);
        },
      );
    } catch (e, s) {
      return Left(
        e is DomainException
            ? e
            : UnknownException(message: e.toString(), stackTrace: s),
      );
    }
  }

  @override
  Future<Either<DomainException, void>> removeFavoriteProduct(
      RemoveFavoriteProductRequestModel deleteFavorite) async {
    try {
      final result = await _productImpl.deleteFavorite(deleteFavorite);
      return result.fold(
        (error) => Left(error),
        (productDto) {
          return const Right(null);
        },
      );
    } catch (e, s) {
      return Left(
        e is DomainException
            ? e
            : UnknownException(message: e.toString(), stackTrace: s),
      );
    }
  }

  @override
  Future<Either<DomainException, PaginationEntity>> searchProducts(
    SearchProductsRequestModel requestModel,
  ) async {
    try {
      final result = await _productImpl.searchProducts(requestModel);
      return result.fold((error) => Left(error), (paginationDto) {
        final paginationEntity = PaginationDtoMapper().map(paginationDto);
        List<ProductEntity> products = [];
        for (var dto in paginationEntity.data) {
          final productEntity = ProductDtoMapper().map(dto as ProductDto);
          products.add(productEntity);
        }
        return Right(paginationEntity.copyWith(data: products));
      });
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, ProductSubCategoriesEntity>>
      getProductSubCategories(
    GetProductSubCategoryRequestModel requestModel,
  ) async {
    try {
      final result = await _productImpl.getProductSubCategories(requestModel);
      return result.fold(
        (error) => Left(error),
        (dto) {
          final result = ProductSubCategoriesEntity(
            productSubCategories: dto.productSubCategories,
          );
          return Right(result);
        },
      );
    } catch (e, s) {
      return Left(
        e is DomainException
            ? e
            : UnknownException(message: e.toString(), stackTrace: s),
      );
    }
  }

  @override
  Future<Either<DomainException, List<FaqEntity>>> getFaqs() async {
    try {
      final result = await _productImpl.getFaqs();
      return result.fold(
        (error) => Left(error),
        (dtos) {
          List<FaqEntity> faqs = [];
          for (var dto in dtos) {
            final faqEntity = FaqDtoMapper().map(dto);
            faqs.add(faqEntity);
          }
          return Right(faqs);
        },
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }
}
