import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'profile_completion_state.freezed.dart';

@freezed
abstract class ProfileCompletionState with _$ProfileCompletionState {
  const factory ProfileCompletionState({
    @Default(1) int step,
    String? gender,
    DateTime? dateOfBirth,
    double? weight,
    double? height,
    @Default(false) bool isLoading,
    String? error,
  }) = _ProfileCompletionState;
}
