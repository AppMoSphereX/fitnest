// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_completion_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileCompletionState implements DiagnosticableTreeMixin {

 int get step; String? get gender; DateTime? get dateOfBirth; double? get weight; double? get height; bool get isLoading; String? get error;
/// Create a copy of ProfileCompletionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileCompletionStateCopyWith<ProfileCompletionState> get copyWith => _$ProfileCompletionStateCopyWithImpl<ProfileCompletionState>(this as ProfileCompletionState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProfileCompletionState'))
    ..add(DiagnosticsProperty('step', step))..add(DiagnosticsProperty('gender', gender))..add(DiagnosticsProperty('dateOfBirth', dateOfBirth))..add(DiagnosticsProperty('weight', weight))..add(DiagnosticsProperty('height', height))..add(DiagnosticsProperty('isLoading', isLoading))..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileCompletionState&&(identical(other.step, step) || other.step == step)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.height, height) || other.height == height)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,step,gender,dateOfBirth,weight,height,isLoading,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProfileCompletionState(step: $step, gender: $gender, dateOfBirth: $dateOfBirth, weight: $weight, height: $height, isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class $ProfileCompletionStateCopyWith<$Res>  {
  factory $ProfileCompletionStateCopyWith(ProfileCompletionState value, $Res Function(ProfileCompletionState) _then) = _$ProfileCompletionStateCopyWithImpl;
@useResult
$Res call({
 int step, String? gender, DateTime? dateOfBirth, double? weight, double? height, bool isLoading, String? error
});




}
/// @nodoc
class _$ProfileCompletionStateCopyWithImpl<$Res>
    implements $ProfileCompletionStateCopyWith<$Res> {
  _$ProfileCompletionStateCopyWithImpl(this._self, this._then);

  final ProfileCompletionState _self;
  final $Res Function(ProfileCompletionState) _then;

/// Create a copy of ProfileCompletionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? step = null,Object? gender = freezed,Object? dateOfBirth = freezed,Object? weight = freezed,Object? height = freezed,Object? isLoading = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as int,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileCompletionState].
extension ProfileCompletionStatePatterns on ProfileCompletionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileCompletionState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileCompletionState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileCompletionState value)  $default,){
final _that = this;
switch (_that) {
case _ProfileCompletionState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileCompletionState value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileCompletionState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int step,  String? gender,  DateTime? dateOfBirth,  double? weight,  double? height,  bool isLoading,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileCompletionState() when $default != null:
return $default(_that.step,_that.gender,_that.dateOfBirth,_that.weight,_that.height,_that.isLoading,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int step,  String? gender,  DateTime? dateOfBirth,  double? weight,  double? height,  bool isLoading,  String? error)  $default,) {final _that = this;
switch (_that) {
case _ProfileCompletionState():
return $default(_that.step,_that.gender,_that.dateOfBirth,_that.weight,_that.height,_that.isLoading,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int step,  String? gender,  DateTime? dateOfBirth,  double? weight,  double? height,  bool isLoading,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _ProfileCompletionState() when $default != null:
return $default(_that.step,_that.gender,_that.dateOfBirth,_that.weight,_that.height,_that.isLoading,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileCompletionState with DiagnosticableTreeMixin implements ProfileCompletionState {
  const _ProfileCompletionState({this.step = 1, this.gender, this.dateOfBirth, this.weight, this.height, this.isLoading = false, this.error});
  

@override@JsonKey() final  int step;
@override final  String? gender;
@override final  DateTime? dateOfBirth;
@override final  double? weight;
@override final  double? height;
@override@JsonKey() final  bool isLoading;
@override final  String? error;

/// Create a copy of ProfileCompletionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileCompletionStateCopyWith<_ProfileCompletionState> get copyWith => __$ProfileCompletionStateCopyWithImpl<_ProfileCompletionState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProfileCompletionState'))
    ..add(DiagnosticsProperty('step', step))..add(DiagnosticsProperty('gender', gender))..add(DiagnosticsProperty('dateOfBirth', dateOfBirth))..add(DiagnosticsProperty('weight', weight))..add(DiagnosticsProperty('height', height))..add(DiagnosticsProperty('isLoading', isLoading))..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileCompletionState&&(identical(other.step, step) || other.step == step)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.height, height) || other.height == height)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,step,gender,dateOfBirth,weight,height,isLoading,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProfileCompletionState(step: $step, gender: $gender, dateOfBirth: $dateOfBirth, weight: $weight, height: $height, isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class _$ProfileCompletionStateCopyWith<$Res> implements $ProfileCompletionStateCopyWith<$Res> {
  factory _$ProfileCompletionStateCopyWith(_ProfileCompletionState value, $Res Function(_ProfileCompletionState) _then) = __$ProfileCompletionStateCopyWithImpl;
@override @useResult
$Res call({
 int step, String? gender, DateTime? dateOfBirth, double? weight, double? height, bool isLoading, String? error
});




}
/// @nodoc
class __$ProfileCompletionStateCopyWithImpl<$Res>
    implements _$ProfileCompletionStateCopyWith<$Res> {
  __$ProfileCompletionStateCopyWithImpl(this._self, this._then);

  final _ProfileCompletionState _self;
  final $Res Function(_ProfileCompletionState) _then;

/// Create a copy of ProfileCompletionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? step = null,Object? gender = freezed,Object? dateOfBirth = freezed,Object? weight = freezed,Object? height = freezed,Object? isLoading = null,Object? error = freezed,}) {
  return _then(_ProfileCompletionState(
step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as int,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
