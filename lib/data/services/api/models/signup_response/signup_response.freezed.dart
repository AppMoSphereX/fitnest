// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignupResponse implements DiagnosticableTreeMixin {

 String get displayName; String get email; String get refreshToken;
/// Create a copy of SignupResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupResponseCopyWith<SignupResponse> get copyWith => _$SignupResponseCopyWithImpl<SignupResponse>(this as SignupResponse, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignupResponse'))
    ..add(DiagnosticsProperty('displayName', displayName))..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('refreshToken', refreshToken));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupResponse&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.email, email) || other.email == email)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken));
}


@override
int get hashCode => Object.hash(runtimeType,displayName,email,refreshToken);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignupResponse(displayName: $displayName, email: $email, refreshToken: $refreshToken)';
}


}

/// @nodoc
abstract mixin class $SignupResponseCopyWith<$Res>  {
  factory $SignupResponseCopyWith(SignupResponse value, $Res Function(SignupResponse) _then) = _$SignupResponseCopyWithImpl;
@useResult
$Res call({
 String displayName, String email, String refreshToken
});




}
/// @nodoc
class _$SignupResponseCopyWithImpl<$Res>
    implements $SignupResponseCopyWith<$Res> {
  _$SignupResponseCopyWithImpl(this._self, this._then);

  final SignupResponse _self;
  final $Res Function(SignupResponse) _then;

/// Create a copy of SignupResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? displayName = null,Object? email = null,Object? refreshToken = null,}) {
  return _then(_self.copyWith(
displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SignupResponse].
extension SignupResponsePatterns on SignupResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignupResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignupResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignupResponse value)  $default,){
final _that = this;
switch (_that) {
case _SignupResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignupResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SignupResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String displayName,  String email,  String refreshToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignupResponse() when $default != null:
return $default(_that.displayName,_that.email,_that.refreshToken);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String displayName,  String email,  String refreshToken)  $default,) {final _that = this;
switch (_that) {
case _SignupResponse():
return $default(_that.displayName,_that.email,_that.refreshToken);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String displayName,  String email,  String refreshToken)?  $default,) {final _that = this;
switch (_that) {
case _SignupResponse() when $default != null:
return $default(_that.displayName,_that.email,_that.refreshToken);case _:
  return null;

}
}

}

/// @nodoc


class _SignupResponse with DiagnosticableTreeMixin implements SignupResponse {
   _SignupResponse({required this.displayName, required this.email, required this.refreshToken});
  

@override final  String displayName;
@override final  String email;
@override final  String refreshToken;

/// Create a copy of SignupResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignupResponseCopyWith<_SignupResponse> get copyWith => __$SignupResponseCopyWithImpl<_SignupResponse>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignupResponse'))
    ..add(DiagnosticsProperty('displayName', displayName))..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('refreshToken', refreshToken));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignupResponse&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.email, email) || other.email == email)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken));
}


@override
int get hashCode => Object.hash(runtimeType,displayName,email,refreshToken);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignupResponse(displayName: $displayName, email: $email, refreshToken: $refreshToken)';
}


}

/// @nodoc
abstract mixin class _$SignupResponseCopyWith<$Res> implements $SignupResponseCopyWith<$Res> {
  factory _$SignupResponseCopyWith(_SignupResponse value, $Res Function(_SignupResponse) _then) = __$SignupResponseCopyWithImpl;
@override @useResult
$Res call({
 String displayName, String email, String refreshToken
});




}
/// @nodoc
class __$SignupResponseCopyWithImpl<$Res>
    implements _$SignupResponseCopyWith<$Res> {
  __$SignupResponseCopyWithImpl(this._self, this._then);

  final _SignupResponse _self;
  final $Res Function(_SignupResponse) _then;

/// Create a copy of SignupResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? displayName = null,Object? email = null,Object? refreshToken = null,}) {
  return _then(_SignupResponse(
displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
