import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'signup_response.freezed.dart';

@freezed
abstract class SignupResponse with _$SignupResponse {
  factory SignupResponse({
    required String displayName,
    required String email,
    required String refreshToken,
  }) = _SignupResponse;
}
