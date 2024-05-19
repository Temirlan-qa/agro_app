import 'package:agro_app/src/core/base/base_usecase/use_case.dart';
import 'package:agro_app/src/core/exception/domain_exception.dart';
import 'package:agro_app/src/features/products/data/repository/product_repository_impl.dart';
import 'package:agro_app/src/features/products/domain/repository/i_product_repository.dart';
import 'package:agro_app/src/features/products/domain/request_model/create_product_request_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CreateProductUseCase
    extends NoneOutputBoundaryUseCase<CreateProductRequestModel> {
  final IProductRepository _productRepository;
  CreateProductUseCase(
    @Named.from(ProductRepositoryImpl) this._productRepository,
  );

  @override
  Future<Either<DomainException, void>> execute(
      CreateProductRequestModel requestModel) async {
    return await _productRepository.createProduct(requestModel);
  }
}
