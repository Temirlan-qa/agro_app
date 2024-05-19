import 'package:agro_app/src/core/exception/domain_exception.dart';
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

abstract class IProductRemote {
  Future<Either<DomainException, PaginationDto>> getAllProducts();
  Future<Either<DomainException, PaginationDto>> getAllUserProducts();
  Future<Either<DomainException, void>> createProduct(
    CreateProductRequestModel createProductRequestModel,
  );
  Future<Either<DomainException, ProductDto>> getProduct(
      GetProductRequestModel getProduct);
  Future<Either<DomainException, ProductDto>> updateProduct(
      UpdateProductRequestModel updateProduct);
  Future<Either<DomainException, void>> deleteProduct(
      DeleteProductRequestModel deleteProduct);
  Future<Either<DomainException, PaginationDto>> getAllFavoriteProducts();

  Future<Either<DomainException, void>> addToFavorite(
    AddProductToFavoriteRequestModel deleteProduct,
  );
  Future<Either<DomainException, void>> deleteFavorite(
    RemoveFavoriteProductRequestModel deleteProduct,
  );
  Future<Either<DomainException, PaginationDto>> searchProducts(
    SearchProductsRequestModel requestModel,
  );
  Future<Either<DomainException, ProductSubCategoriesDto>>
      getProductSubCategories(
    GetProductSubCategoryRequestModel requestModel,
  );
  Future<Either<DomainException, List<FaqDto>>> getFaqs();
}
