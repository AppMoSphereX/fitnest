import 'package:fitnest/data/repositories/auth/auth_repository.dart';
import 'package:fitnest/data/services/services_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'auth/auth_repository_remote.dart';

part 'repositories_providers.g.dart';

@riverpod
AuthRepository authRepository (Ref ref) {
  final auth = ref.read(authServiceProvider);
  return AuthRepositoryRemote(authService: auth);
}
