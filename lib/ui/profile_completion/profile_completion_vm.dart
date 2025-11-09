import 'package:fitnest/domain/models/user/goal.dart';
import 'package:fitnest/ui/profile_completion/profile_completion_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_completion_vm.g.dart';

@riverpod
class ProfileCompletionVM extends _$ProfileCompletionVM {
  @override
  ProfileCompletionState build() {
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
}
