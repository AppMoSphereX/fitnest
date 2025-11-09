import 'package:fitnest/domain/repositories/auth_repository.dart';
import 'package:fitnest/data/repositories/user/user_repository_remote.dart';
import 'package:fitnest/data/services/services_providers.dart';
import 'package:fitnest/domain/repositories/user_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'auth/auth_repository_remote.dart';

part 'repositories_providers.g.dart';

@riverpod
AuthRepository authRepository(Ref ref) {
  final auth = ref.read(authServiceProvider);
  return AuthRepositoryRemote(authService: auth);
}

@riverpod
UserRepository userRepository(Ref ref) {
  final firestoreService = ref.read(firestoreServiceProvider);
  return UserRepositoryRemote(firestoreService: firestoreService);
}
