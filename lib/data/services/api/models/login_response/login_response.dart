import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'login_response.freezed.dart';

@freezed
abstract class LoginResponse with _$LoginResponse {
  factory LoginResponse({
    required String displayName,
    required String email,
    required String refreshToken,
  }) = _LoginResponse;
}
