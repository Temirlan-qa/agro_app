import 'package:agro_app/src/core/api/client/rest/dio_client.dart';
import 'package:agro_app/src/core/api/client/rest/endpoints.dart';
import 'package:agro_app/src/core/enum/product_enums.dart';
import 'package:agro_app/src/core/exception/domain_exception.dart';
import 'package:agro_app/src/features/products/data/data_sources/remote/i_product_remote.dart';
import 'package:agro_app/src/features/products/data/models/dto/faq_dto.dart';
import 'package:agro_app/src/features/products/data/models/dto/pagination_dto.dart';
import 'package:agro_app/src/features/products/data/models/dto/product_dto.dart';
import 'package:agro_app/src/features/products/data/models/dto/product_sub_categories_dto.dart';
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
@LazySingleton(as: IProductRemote)
class ProductRemoteImpl implements IProductRemote {
  final DioRestClient _dioRestClient;
  ProductRemoteImpl(this._dioRestClient);

  @override
  Future<Either<DomainException, PaginationDto>> getAllProducts() async {
    try {
      final result = await _dioRestClient.post(EndPoints.getAllProducts);

      return result.fold(
        (error) => Left(error),
        (response) {
          if (response.statusCode == 200) {
            return Right(_parseProductData(response.data));
          }
          return Left(UnknownException());
        },
      );
    } catch (e) {
      return Left(
        e is DomainException ? e : UnknownException(message: e.toString()),
      );
    }
  }

  PaginationDto _parseProductData(Map<String, dynamic> data) {
    final dto = PaginationDto.fromJson(data);
    final result = dto.copyWith(
      data: _parseProductList(dto.data),
    );
    return result;
  }

  List<ProductDto> _parseProductList(List<dynamic> data) {
    return data.map((item) => ProductDto.fromJson(item)).toList();
  }

  @override
  Future<Either<DomainException, void>> createProduct(
      CreateProductRequestModel newProduct) async {
    try {
      final result = await _dioRestClient.post(
        EndPoints.createProduct,
        data: newProduct.toRawData(),
      );
      return result.fold((error) => Left(error), (response) {
        if (response.statusCode == 201 || response.statusCode == 200) {
          return const Right(null);
        }
        return Left(UnknownException());
      });
    } catch (e) {
      return Left(
        e is DomainException ? e : UnknownException(message: e.toString()),
      );
    }
  }

  @override
  Future<Either<DomainException, void>> deleteProduct(
    DeleteProductRequestModel deleteProduct,
  ) async {
    try {
      final result = await _dioRestClient.post(
        EndPoints.deleteProduct(deleteProduct.id),
      );

      return result.fold(
        (error) => Left(error),
        (response) {
          if (response.statusCode == 200 ||
              response.statusCode == 201 ||
              response.statusCode == 204) {
            return const Right(null);
          }
          return Left(UnknownError());
        },
      );
    } catch (e) {
      return Left(
        e is DomainException ? e : UnknownException(message: e.toString()),
      );
    }
  }

  @override
  Future<Either<DomainException, ProductDto>> getProduct(
    GetProductRequestModel getProduct,
  ) async {
    try {
      final result = await _dioRestClient.get(
        EndPoints.getProduct(getProduct.id),
      );

      return result.fold((error) => Left(error), (response) {
        if (response.statusCode == 200 || response.statusCode == 201) {
          return Right(ProductDto.fromJson(response.data));
        }
        return Left(UnknownError());
      });
    } catch (e) {
      return Left(
        e is DomainException ? e : UnknownException(message: e.toString()),
      );
    }
  }

  @override
  Future<Either<DomainException, ProductDto>> updateProduct(
    UpdateProductRequestModel updateProduct,
  ) async {
    try {
      final result = await _dioRestClient.put(
        EndPoints.updateProduct(updateProduct.id),
        data: updateProduct.toRawData(),
      );

      return result.fold(
        (error) => Left(error),
        (response) {
          if (response.statusCode == 200 || response.statusCode == 201) {
            return Right(ProductDto.fromJson(response.data));
          }
          return Left(UnknownError());
        },
      );
    } catch (e) {
      return Left(
        e is DomainException ? e : UnknownException(message: e.toString()),
      );
    }
  }

  @override
  Future<Either<DomainException, PaginationDto>> getAllUserProducts() async {
    try {
      final result = await _dioRestClient.get(EndPoints.getAllUserProducts);

      return result.fold(
        (error) => Left(error),
        (response) {
          if (response.statusCode == 200) {
            return Right(_parseProductData(response.data));
          }
          return Left(UnknownError());
        },
      );
    } catch (e) {
      return Left(
        e is DomainException ? e : UnknownException(message: e.toString()),
      );
    }
  }

  @override
  Future<Either<DomainException, PaginationDto>>
      getAllFavoriteProducts() async {
    try {
      final result =
          await _dioRestClient.post(EndPoints.getAllFavoriteProducts);

      return result.fold((error) => Left(error), (response) {
        if (response.statusCode == 200) {
          return Right(_parseProductData(response.data));
        }
        return Left(UnknownError());
      });
    } catch (e) {
      return Left(
        e is DomainException ? e : UnknownException(message: e.toString()),
      );
    }
  }

  @override
  Future<Either<DomainException, void>> addToFavorite(
      AddProductToFavoriteRequestModel requestModel) async {
    try {
      final response = await _dioRestClient.post(
        EndPoints.addToFavorite(requestModel.id),
      );

      return response.fold(
        (error) => Left(error),
        (result) {
          if (result.statusCode == 201 || result.statusCode == 200) {
            return const Right(null);
          }
          return Left(UnknownError());
        },
      );
    } catch (e) {
      return Left(
        e is DomainException ? e : UnknownException(message: e.toString()),
      );
    }
  }

  @override
  Future<Either<DomainException, void>> deleteFavorite(
      RemoveFavoriteProductRequestModel requestModel) async {
    try {
      final response = await _dioRestClient.post(
        EndPoints.removeFavorite(requestModel.id),
      );

      return response.fold((error) => Left(error), (result) {
        if (result.statusCode == 201 || result.statusCode == 200) {
          return const Right(null);
        }
        return Left(UnknownError());
      });
    } catch (e) {
      return Left(
        e is DomainException ? e : UnknownException(message: e.toString()),
      );
    }
  }

  @override
  Future<Either<DomainException, PaginationDto>> searchProducts(
    SearchProductsRequestModel requestModel,
  ) async {
    try {
      final result = await _dioRestClient.post(
        EndPoints.searchProducts,
        data: requestModel.toRawData(),
      );

      return result.fold(
        (error) => Left(error),
        (response) {
          if (response.statusCode == 200 || response.statusCode == 201) {
            return Right(_parseProductData(response.data));
          }
          return Left(UnknownException());
        },
      );
    } catch (e) {
      return Left(
        e is DomainException ? e : UnknownException(message: e.toString()),
      );
    }
  }

  @override
  Future<Either<DomainException, ProductSubCategoriesDto>>
      getProductSubCategories(
    GetProductSubCategoryRequestModel requestModel,
  ) async {
    try {
      final result = await _dioRestClient.get(
        EndPoints.getProductSubCategory(requestModel.productCategory.name),
      );

      return result.fold(
        (error) => Left(error),
        (response) {
          if (response.statusCode == 200 || response.statusCode == 201) {
            final list = response.data as List;
            final mappedList = list
                .map((e) => ProductSubCategory.fromJson(e as String))
                .toList();
            return Right(
                ProductSubCategoriesDto(productSubCategories: mappedList));
          }
          return Left(UnknownException());
        },
      );
    } catch (e) {
      return Left(
        e is DomainException ? e : UnknownException(message: e.toString()),
      );
    }
  }

  @override
  Future<Either<DomainException, List<FaqDto>>> getFaqs() async {
    try {
      final result = await _dioRestClient.get(EndPoints.getFaqs);
      return result.fold(
        (error) => Left(error),
        (response) {
          if (response.statusCode == 200) {
            final List<FaqDto> faqs = [];
            faqs.addAll((response.data! as List<dynamic>)
                .map((item) => FaqDto.fromJson(item)));
            return Right(faqs);
          }
          return Left(UnknownException());
        },
      );
    } catch (e) {
      return Left(
        e is DomainException ? e : UnknownException(message: e.toString()),
      );
    }
  }
}
