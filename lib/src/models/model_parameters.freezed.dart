// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ModelParameters {

/// Controls randomness in the model's output.
/// Higher values make output more random, lower values more deterministic.
 double? get temperature;/// Controls diversity via nucleus sampling.
/// Lower values focus on more likely tokens.
@JsonKey(name: 'top_p') double? get topP;
/// Create a copy of ModelParameters
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModelParametersCopyWith<ModelParameters> get copyWith => _$ModelParametersCopyWithImpl<ModelParameters>(this as ModelParameters, _$identity);

  /// Serializes this ModelParameters to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModelParameters&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.topP, topP) || other.topP == topP));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temperature,topP);

@override
String toString() {
  return 'ModelParameters(temperature: $temperature, topP: $topP)';
}


}

/// @nodoc
abstract mixin class $ModelParametersCopyWith<$Res>  {
  factory $ModelParametersCopyWith(ModelParameters value, $Res Function(ModelParameters) _then) = _$ModelParametersCopyWithImpl;
@useResult
$Res call({
 double? temperature,@JsonKey(name: 'top_p') double? topP
});




}
/// @nodoc
class _$ModelParametersCopyWithImpl<$Res>
    implements $ModelParametersCopyWith<$Res> {
  _$ModelParametersCopyWithImpl(this._self, this._then);

  final ModelParameters _self;
  final $Res Function(ModelParameters) _then;

/// Create a copy of ModelParameters
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? temperature = freezed,Object? topP = freezed,}) {
  return _then(_self.copyWith(
temperature: freezed == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double?,topP: freezed == topP ? _self.topP : topP // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [ModelParameters].
extension ModelParametersPatterns on ModelParameters {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ModelParameters value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ModelParameters() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ModelParameters value)  $default,){
final _that = this;
switch (_that) {
case _ModelParameters():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ModelParameters value)?  $default,){
final _that = this;
switch (_that) {
case _ModelParameters() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? temperature, @JsonKey(name: 'top_p')  double? topP)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ModelParameters() when $default != null:
return $default(_that.temperature,_that.topP);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? temperature, @JsonKey(name: 'top_p')  double? topP)  $default,) {final _that = this;
switch (_that) {
case _ModelParameters():
return $default(_that.temperature,_that.topP);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? temperature, @JsonKey(name: 'top_p')  double? topP)?  $default,) {final _that = this;
switch (_that) {
case _ModelParameters() when $default != null:
return $default(_that.temperature,_that.topP);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ModelParameters implements ModelParameters {
  const _ModelParameters({this.temperature, @JsonKey(name: 'top_p') this.topP});
  factory _ModelParameters.fromJson(Map<String, dynamic> json) => _$ModelParametersFromJson(json);

/// Controls randomness in the model's output.
/// Higher values make output more random, lower values more deterministic.
@override final  double? temperature;
/// Controls diversity via nucleus sampling.
/// Lower values focus on more likely tokens.
@override@JsonKey(name: 'top_p') final  double? topP;

/// Create a copy of ModelParameters
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModelParametersCopyWith<_ModelParameters> get copyWith => __$ModelParametersCopyWithImpl<_ModelParameters>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ModelParametersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ModelParameters&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.topP, topP) || other.topP == topP));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temperature,topP);

@override
String toString() {
  return 'ModelParameters(temperature: $temperature, topP: $topP)';
}


}

/// @nodoc
abstract mixin class _$ModelParametersCopyWith<$Res> implements $ModelParametersCopyWith<$Res> {
  factory _$ModelParametersCopyWith(_ModelParameters value, $Res Function(_ModelParameters) _then) = __$ModelParametersCopyWithImpl;
@override @useResult
$Res call({
 double? temperature,@JsonKey(name: 'top_p') double? topP
});




}
/// @nodoc
class __$ModelParametersCopyWithImpl<$Res>
    implements _$ModelParametersCopyWith<$Res> {
  __$ModelParametersCopyWithImpl(this._self, this._then);

  final _ModelParameters _self;
  final $Res Function(_ModelParameters) _then;

/// Create a copy of ModelParameters
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? temperature = freezed,Object? topP = freezed,}) {
  return _then(_ModelParameters(
temperature: freezed == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double?,topP: freezed == topP ? _self.topP : topP // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
