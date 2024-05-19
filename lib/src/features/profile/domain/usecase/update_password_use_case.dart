import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exception/domain_exception.dart';
import '../../data/repository/profile_repository_impl.dart';
import '../repository/i_profile_repository.dart';
import '../request_models/update_password_request_model.dart';

@lazySingleton
class UpdatePasswordUseCase
    extends UseCase<String, UpdatePasswordRequestModel> {
  final IProfileRepository _profileRepository;
  UpdatePasswordUseCase(
      @Named.from(ProfileRepositoryImpl) this._profileRepository);

  @override
  Future<Either<DomainException, String>> execute(
    UpdatePasswordRequestModel requestModel,
  ) async =>
      _profileRepository.updatePassword(requestModel);
}
