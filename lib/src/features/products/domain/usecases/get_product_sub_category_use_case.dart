import 'package:agro_app/src/core/base/base_usecase/use_case.dart';
import 'package:agro_app/src/core/exception/domain_exception.dart';
import 'package:agro_app/src/features/products/data/repository/product_repository_impl.dart';
import 'package:agro_app/src/features/products/domain/entities/product_sub_categories_entity.dart';
import 'package:agro_app/src/features/products/domain/repository/i_product_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../request_model/get_product_sub_category_request_model.dart';

@lazySingleton
class GetProductSubCategoryUseCase extends UseCase<ProductSubCategoriesEntity,
    GetProductSubCategoryRequestModel> {
  final IProductRepository _productRepository;
  GetProductSubCategoryUseCase(
      @Named.from(ProductRepositoryImpl) this._productRepository);

  @override
  Future<Either<DomainException, ProductSubCategoriesEntity>> execute(
    GetProductSubCategoryRequestModel requestModel,
  ) async {
    return await _productRepository.getProductSubCategories(requestModel);
  }
}
