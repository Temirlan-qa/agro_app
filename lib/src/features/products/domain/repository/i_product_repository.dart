import 'package:agro_app/src/core/exception/domain_exception.dart';
import 'package:agro_app/src/features/products/domain/entities/faq_entity.dart';
import 'package:agro_app/src/features/products/domain/entities/pagination_entity.dart';
import 'package:agro_app/src/features/products/domain/entities/product_entity.dart';
import 'package:agro_app/src/features/products/domain/entities/product_sub_categories_entity.dart';
import 'package:agro_app/src/features/products/domain/request_model/add_product_to_favorite_request_model.dart';
import 'package:agro_app/src/features/products/domain/request_model/create_product_request_model.dart';
import 'package:agro_app/src/features/products/domain/request_model/delete_product_request_model.dart';
import 'package:agro_app/src/features/products/domain/request_model/get_product_request_model.dart';
import 'package:agro_app/src/features/products/domain/request_model/get_product_sub_category_request_model.dart';
import 'package:agro_app/src/features/products/domain/request_model/remove_favorite_product_request_model.dart';
import 'package:agro_app/src/features/products/domain/request_model/search_products_request_model.dart';
import 'package:agro_app/src/features/products/domain/request_model/update_product_request_model.dart';
import 'package:fpdart/fpdart.dart';

abstract class IProductRepository {
  Future<Either<DomainException, PaginationEntity>> getAllProducts();
  Future<Either<DomainException, void>> createProduct(
    CreateProductRequestModel createProductRequestModel,
  );
  Future<Either<DomainException, ProductEntity>> getProduct(
    GetProductRequestModel getProductRequestModel,
  );
  Future<Either<DomainException, PaginationEntity>> getAllUserProducts();
  Future<Either<DomainException, ProductEntity>> updateProduct(
      UpdateProductRequestModel updateProduct);
  Future<Either<DomainException, void>> deleteProduct(
      DeleteProductRequestModel deleteProduct);
  Future<Either<DomainException, PaginationEntity>> getAllFavoriteProducts();
  Future<Either<DomainException, void>> addProductToFavorite(
    AddProductToFavoriteRequestModel requestModel,
  );
  Future<Either<DomainException, void>> removeFavoriteProduct(
    RemoveFavoriteProductRequestModel requestModel,
  );
  Future<Either<DomainException, PaginationEntity>> searchProducts(
    SearchProductsRequestModel requestModel,
  );
  Future<Either<DomainException, ProductSubCategoriesEntity>>
      getProductSubCategories(
    GetProductSubCategoryRequestModel requestModel,
  );
  Future<Either<DomainException, List<FaqEntity>>> getFaqs();
}
