import 'package:fitnest/data/repositories/auth/auth_repository.dart';
import 'package:fitnest/data/repositories/repositories_providers.dart';
import 'package:fitnest/ui/auth/signup/signup_screen_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'signup_screen_vm.g.dart';

@riverpod
class SignupScreenVM extends _$SignupScreenVM {
  late final AuthRepository _authRepository;

  @override
  SignupScreenState build() {
    _authRepository = ref.watch(authRepositoryProvider);
    return SignupScreenState();
  }

  Future<void> signup(
    String email,
    String password,
    String firstName,
    String lastName,
  ) async {
    try {
      state = state.copyWith(isLoading: true);
      await _authRepository.signup(email: email, password: password);
      state = state.copyWith(isLoading: false);
    } on Exception catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  void setTermsAccepted(bool value) {
    state = state.copyWith(isTermsAccepted: value);
  }
}
