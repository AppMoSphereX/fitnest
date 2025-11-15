import 'package:fitnest/domain/models/user/goal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const User._();

  const factory User({
    required String id,
    String? email,
    String? firstName,
    String? lastName,
    String? gender,
    DateTime? dateOfBirth,
    double? weight,
    double? height,
    Goal? goal,
  }) = _User;

  bool get isProfileComplete {
    return firstName != null &&
        firstName!.isNotEmpty &&
        lastName != null &&
        lastName!.isNotEmpty &&
        gender != null &&
        gender!.isNotEmpty &&
        dateOfBirth != null &&
        weight != null &&
        height != null &&
        goal != null;
  }

  String get displayName =>
      firstName != null || lastName != null ? '$firstName $lastName' : email ?? '';
}
