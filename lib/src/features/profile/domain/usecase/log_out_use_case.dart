import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exception/domain_exception.dart';
import '../../data/repository/profile_repository_impl.dart';
import '../entities/log_out_entity.dart';
import '../repository/i_profile_repository.dart';
import '../request_models/log_out_request_model.dart';

@lazySingleton
class LogOutUseCase extends UseCase<LogOutEntity, LogOutRequestModel> {
  final IProfileRepository _profileRepository;
  LogOutUseCase(@Named.from(ProfileRepositoryImpl) this._profileRepository);

  @override
  Future<Either<DomainException, LogOutEntity>> execute(
          LogOutRequestModel requestModel) async =>
      _profileRepository.logOut(requestModel);
}
