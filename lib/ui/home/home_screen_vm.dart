import 'package:fitnest/data/repositories/auth/auth_repository.dart';
import 'package:fitnest/data/repositories/repositories_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_screen_vm.g.dart';

@riverpod
class HomeScreenVM extends _$HomeScreenVM {
  late final AuthRepository _authRepository;

  @override
  void build() {
    _authRepository = ref.watch(authRepositoryProvider);
  }

  Future<void> logout() async {
    await _authRepository.logout();
  }
}
