import 'package:agro_app/src/features/profile/domain/entities/user_entity.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exception/domain_exception.dart';
import '../../data/repository/profile_repository_impl.dart';
import '../repository/i_profile_repository.dart';

@lazySingleton
class GetUserInfoUseCase extends NoneInputBoundaryUseCase<UserEntity> {
  final IProfileRepository _profileRepository;
  GetUserInfoUseCase(
      @Named.from(ProfileRepositoryImpl) this._profileRepository);

  @override
  Future<Either<DomainException, UserEntity>> execute() async =>
      _profileRepository.getUserInfo();
}
