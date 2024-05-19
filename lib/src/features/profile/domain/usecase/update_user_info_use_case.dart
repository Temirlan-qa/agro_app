import 'package:agro_app/src/features/profile/domain/entities/user_entity.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exception/domain_exception.dart';
import '../../data/repository/profile_repository_impl.dart';
import '../repository/i_profile_repository.dart';
import '../request_models/update_user_info_request_model.dart';

@lazySingleton
class UpdateUserInfoUseCase
    extends UseCase<UserEntity, UpdateUserInfoRequestModel> {
  final IProfileRepository _profileRepository;
  UpdateUserInfoUseCase(
      @Named.from(ProfileRepositoryImpl) this._profileRepository);

  @override
  Future<Either<DomainException, UserEntity>> execute(
          UpdateUserInfoRequestModel requestModel) async =>
      _profileRepository.updateUserInfo(requestModel);
}
