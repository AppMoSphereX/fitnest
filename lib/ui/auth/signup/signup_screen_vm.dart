import 'package:fitnest/domain/usecases/auth/signup_usecase.dart';
import 'package:fitnest/ui/auth/signup/signup_screen_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'signup_screen_vm.g.dart';

@riverpod
class SignupScreenVM extends _$SignupScreenVM {
  late final SignupUsecase _signupUsecase;

  @override
  SignupScreenState build() {
    _signupUsecase = ref.watch(signupUsecaseProvider);
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
      await _signupUsecase.execute(
        email: email,
        password: password,
        firstName: firstName,
        lastName: lastName,
      );
      state = state.copyWith(isLoading: false);
    } on Exception catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  void setTermsAccepted(bool value) {
    state = state.copyWith(isTermsAccepted: value);
  }
}
