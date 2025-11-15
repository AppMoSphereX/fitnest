import 'package:fitnest/data/repositories/repositories_providers.dart';
import 'package:fitnest/domain/models/user/goal.dart';
import 'package:fitnest/domain/models/user/user.dart';
import 'package:fitnest/domain/repositories/auth_repository.dart';
import 'package:fitnest/domain/repositories/user_repository.dart';
import 'package:fitnest/ui/profile_completion/profile_completion_state.dart';
import 'package:fitnest/utils/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_completion_vm.g.dart';

@riverpod
class ProfileCompletionVM extends _$ProfileCompletionVM {
  late AuthRepository _authRepository;
  late UserRepository _userRepository;

  @override
  ProfileCompletionState build() {
    _authRepository = ref.read(authRepositoryProvider);
    _userRepository = ref.read(userRepositoryProvider);
    return ProfileCompletionState();
  }

  void setGender(String gender) {
    state = state.copyWith(gender: gender);
  }

  void setDateOfBirth(DateTime dateOfBirth) {
    state = state.copyWith(dateOfBirth: dateOfBirth);
  }

  void setWeight(double weight) {
    state = state.copyWith(weight: weight);
  }

  void setHeight(double height) {
    state = state.copyWith(height: height);
  }

  void setGoal(Goal goal) {
    state = state.copyWith(goal: goal);
  }

  void nextStep() {
    if (state.step < 2) {
      state = state.copyWith(step: state.step + 1);
    }
  }

  void previousStep() {
    if (state.step > 1) {
      state = state.copyWith(step: state.step - 1);
    }
  }

  Future<void> completeProfile() async {
    state = state.copyWith(isLoading: true);
    final userId = _authRepository.currentUserId;
    var userData = await _userRepository.getUserProfile();
    if (userId == null) {
      return;
    }
    User? user;
    switch (userData) {
      case Ok():
        if (userData.value == null) {
          state = state.copyWith(isLoading: false, error: 'User not found');
          return;
        }
        user = (userData as Ok).value as User?;
        break;
      case Error():
        state = state.copyWith(
          isLoading: false,
          error: (userData as Error).error.toString(),
        );
        return;
    }

    final updatedUser = User(
      id: userId,
      email: user?.email,
      gender: state.gender,
      dateOfBirth: state.dateOfBirth,
      weight: state.weight,
      height: state.height,
      goal: state.goal,
    );
    final result = await _userRepository.updateUserProfile(updatedUser);
    switch (result) {
      case Ok():
        state = state.copyWith(isLoading: false, step: 3);
        return;
      case Error():
        state = state.copyWith(
          isLoading: false,
          error: (result as Error).error.toString(),
        );
        return;
    }
  }
}
