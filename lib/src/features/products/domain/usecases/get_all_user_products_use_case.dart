import 'package:agro_app/src/core/base/base_usecase/use_case.dart';
import 'package:agro_app/src/core/exception/domain_exception.dart';
import 'package:agro_app/src/features/products/data/repository/product_repository_impl.dart';
import 'package:agro_app/src/features/products/domain/entities/pagination_entity.dart';
import 'package:agro_app/src/features/products/domain/repository/i_product_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetAllUserProductsUseCase
    extends NoneInputBoundaryUseCase<PaginationEntity> {
  final IProductRepository _productRepository;
  GetAllUserProductsUseCase(
    @Named.from(ProductRepositoryImpl) this._productRepository,
  );

  @override
  Future<Either<DomainException, PaginationEntity>> execute() async {
    return await _productRepository.getAllUserProducts();
  }
}
