import 'package:fitnest/domain/repositories/auth_repository.dart';
import 'package:fitnest/data/repositories/repositories_providers.dart';
import 'package:fitnest/ui/auth/login/login_screen_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_screen_vm.g.dart';

@riverpod
class LoginScreenVM extends _$LoginScreenVM {
  late final AuthRepository _authRepository;

  @override
  LoginScreenState build() {
    _authRepository = ref.watch(authRepositoryProvider);
    return LoginScreenState();
  }

  Future<void> login(String email, String password) async {
    try {
      state = state.copyWith(isLoading: true);
      await _authRepository.login(email: email, password: password);
      state = state.copyWith(isLoading: false);
    } on Exception catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }
}
