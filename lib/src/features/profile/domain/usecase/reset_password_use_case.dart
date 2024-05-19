// import 'package:fpdart/fpdart.dart';
// import 'package:injectable/injectable.dart';

// import '../../../../core/base/base_usecase/use_case.dart';
// import '../../../../core/exception/domain_exception.dart';
// import '../../data/repository/profile_repository_impl.dart';
// import '../repository/i_profile_repository.dart';

// @lazySingleton
// class ResetPasswordUseCase extends NoneInputBoundaryUseCase<String> {
//   final IProfileRepository _profileRepository;
//   ResetPasswordUseCase(
//       @Named.from(ProfileRepositoryImpl) this._profileRepository);

//   @override
//   Future<Either<DomainException, String>> execute() async =>
//       _profileRepository.resetPassword();
// }
