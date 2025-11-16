import 'package:fitnest/data/repositories/repositories_providers.dart';
import 'package:fitnest/domain/models/user/user.dart';
import 'package:fitnest/domain/repositories/auth_repository.dart';
import 'package:fitnest/domain/repositories/user_repository.dart';
import 'package:fitnest/utils/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'signup_usecase.g.dart';

class SignupUsecase {
  final AuthRepository _authRepository;
  final UserRepository _userRepository;

  SignupUsecase({
    required AuthRepository authRepository,
    required UserRepository userRepository,
  }) : _authRepository = authRepository,
       _userRepository = userRepository;

  Future<Result<void>> execute({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  }) async {
    final signupResult = await _authRepository.signup(
      email: email,
      password: password,
    );

    if (signupResult is Error) {
      return Result.error((signupResult as Error<String>).error);
    }

    final userId = (signupResult as Ok<String>).value;
    final userResult = await _userRepository.createUserProfile(
      User(id: userId, email: email, firstName: firstName, lastName: lastName),
    );

    switch (userResult) {
      case Ok():
        return Result.ok(null);
      case Error():
        return Result.error((userResult).error);
    }
  }
}

@riverpod
SignupUsecase signupUsecase(Ref ref) {
  return SignupUsecase(
    authRepository: ref.read(authRepositoryProvider),
    userRepository: ref.read(userRepositoryProvider),
  );
}
