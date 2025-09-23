// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TestData {

/// Name or identifier for the test case.
 String? get name;/// Description of what this test case validates.
 String? get description;/// Input data for the test case.
@JsonKey(name: 'input') Map<String, dynamic>? get inputData;/// Expected output for the test case.
@JsonKey(name: 'expected_output') Map<String, dynamic>? get expectedOutput;
/// Create a copy of TestData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TestDataCopyWith<TestData> get copyWith => _$TestDataCopyWithImpl<TestData>(this as TestData, _$identity);

  /// Serializes this TestData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TestData&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.inputData, inputData)&&const DeepCollectionEquality().equals(other.expectedOutput, expectedOutput));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,const DeepCollectionEquality().hash(inputData),const DeepCollectionEquality().hash(expectedOutput));

@override
String toString() {
  return 'TestData(name: $name, description: $description, inputData: $inputData, expectedOutput: $expectedOutput)';
}


}

/// @nodoc
abstract mixin class $TestDataCopyWith<$Res>  {
  factory $TestDataCopyWith(TestData value, $Res Function(TestData) _then) = _$TestDataCopyWithImpl;
@useResult
$Res call({
 String? name, String? description,@JsonKey(name: 'input') Map<String, dynamic>? inputData,@JsonKey(name: 'expected_output') Map<String, dynamic>? expectedOutput
});




}
/// @nodoc
class _$TestDataCopyWithImpl<$Res>
    implements $TestDataCopyWith<$Res> {
  _$TestDataCopyWithImpl(this._self, this._then);

  final TestData _self;
  final $Res Function(TestData) _then;

/// Create a copy of TestData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? description = freezed,Object? inputData = freezed,Object? expectedOutput = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,inputData: freezed == inputData ? _self.inputData : inputData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,expectedOutput: freezed == expectedOutput ? _self.expectedOutput : expectedOutput // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [TestData].
extension TestDataPatterns on TestData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TestData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TestData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TestData value)  $default,){
final _that = this;
switch (_that) {
case _TestData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TestData value)?  $default,){
final _that = this;
switch (_that) {
case _TestData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? description, @JsonKey(name: 'input')  Map<String, dynamic>? inputData, @JsonKey(name: 'expected_output')  Map<String, dynamic>? expectedOutput)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TestData() when $default != null:
return $default(_that.name,_that.description,_that.inputData,_that.expectedOutput);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? description, @JsonKey(name: 'input')  Map<String, dynamic>? inputData, @JsonKey(name: 'expected_output')  Map<String, dynamic>? expectedOutput)  $default,) {final _that = this;
switch (_that) {
case _TestData():
return $default(_that.name,_that.description,_that.inputData,_that.expectedOutput);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? description, @JsonKey(name: 'input')  Map<String, dynamic>? inputData, @JsonKey(name: 'expected_output')  Map<String, dynamic>? expectedOutput)?  $default,) {final _that = this;
switch (_that) {
case _TestData() when $default != null:
return $default(_that.name,_that.description,_that.inputData,_that.expectedOutput);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TestData implements TestData {
  const _TestData({this.name, this.description, @JsonKey(name: 'input') final  Map<String, dynamic>? inputData, @JsonKey(name: 'expected_output') final  Map<String, dynamic>? expectedOutput}): _inputData = inputData,_expectedOutput = expectedOutput;
  factory _TestData.fromJson(Map<String, dynamic> json) => _$TestDataFromJson(json);

/// Name or identifier for the test case.
@override final  String? name;
/// Description of what this test case validates.
@override final  String? description;
/// Input data for the test case.
 final  Map<String, dynamic>? _inputData;
/// Input data for the test case.
@override@JsonKey(name: 'input') Map<String, dynamic>? get inputData {
  final value = _inputData;
  if (value == null) return null;
  if (_inputData is EqualUnmodifiableMapView) return _inputData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// Expected output for the test case.
 final  Map<String, dynamic>? _expectedOutput;
/// Expected output for the test case.
@override@JsonKey(name: 'expected_output') Map<String, dynamic>? get expectedOutput {
  final value = _expectedOutput;
  if (value == null) return null;
  if (_expectedOutput is EqualUnmodifiableMapView) return _expectedOutput;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of TestData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TestDataCopyWith<_TestData> get copyWith => __$TestDataCopyWithImpl<_TestData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TestDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TestData&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._inputData, _inputData)&&const DeepCollectionEquality().equals(other._expectedOutput, _expectedOutput));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,const DeepCollectionEquality().hash(_inputData),const DeepCollectionEquality().hash(_expectedOutput));

@override
String toString() {
  return 'TestData(name: $name, description: $description, inputData: $inputData, expectedOutput: $expectedOutput)';
}


}

/// @nodoc
abstract mixin class _$TestDataCopyWith<$Res> implements $TestDataCopyWith<$Res> {
  factory _$TestDataCopyWith(_TestData value, $Res Function(_TestData) _then) = __$TestDataCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? description,@JsonKey(name: 'input') Map<String, dynamic>? inputData,@JsonKey(name: 'expected_output') Map<String, dynamic>? expectedOutput
});




}
/// @nodoc
class __$TestDataCopyWithImpl<$Res>
    implements _$TestDataCopyWith<$Res> {
  __$TestDataCopyWithImpl(this._self, this._then);

  final _TestData _self;
  final $Res Function(_TestData) _then;

/// Create a copy of TestData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? description = freezed,Object? inputData = freezed,Object? expectedOutput = freezed,}) {
  return _then(_TestData(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,inputData: freezed == inputData ? _self._inputData : inputData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,expectedOutput: freezed == expectedOutput ? _self._expectedOutput : expectedOutput // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
