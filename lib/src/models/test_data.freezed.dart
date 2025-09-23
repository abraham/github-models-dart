// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TestData _$TestDataFromJson(Map<String, dynamic> json) {
  return _TestData.fromJson(json);
}

/// @nodoc
mixin _$TestData {
  /// Name or identifier for the test case.
  String? get name => throw _privateConstructorUsedError;

  /// Description of what this test case validates.
  String? get description => throw _privateConstructorUsedError;

  /// Input data for the test case.
  @JsonKey(name: 'input')
  Map<String, dynamic>? get inputData => throw _privateConstructorUsedError;

  /// Expected output for the test case.
  @JsonKey(name: 'expected_output')
  Map<String, dynamic>? get expectedOutput =>
      throw _privateConstructorUsedError;

  /// Serializes this TestData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TestData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TestDataCopyWith<TestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestDataCopyWith<$Res> {
  factory $TestDataCopyWith(TestData value, $Res Function(TestData) then) =
      _$TestDataCopyWithImpl<$Res, TestData>;
  @useResult
  $Res call({
    String? name,
    String? description,
    @JsonKey(name: 'input') Map<String, dynamic>? inputData,
    @JsonKey(name: 'expected_output') Map<String, dynamic>? expectedOutput,
  });
}

/// @nodoc
class _$TestDataCopyWithImpl<$Res, $Val extends TestData>
    implements $TestDataCopyWith<$Res> {
  _$TestDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TestData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? inputData = freezed,
    Object? expectedOutput = freezed,
  }) {
    return _then(
      _value.copyWith(
            name:
                freezed == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String?,
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String?,
            inputData:
                freezed == inputData
                    ? _value.inputData
                    : inputData // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>?,
            expectedOutput:
                freezed == expectedOutput
                    ? _value.expectedOutput
                    : expectedOutput // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TestDataImplCopyWith<$Res>
    implements $TestDataCopyWith<$Res> {
  factory _$$TestDataImplCopyWith(
    _$TestDataImpl value,
    $Res Function(_$TestDataImpl) then,
  ) = __$$TestDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? name,
    String? description,
    @JsonKey(name: 'input') Map<String, dynamic>? inputData,
    @JsonKey(name: 'expected_output') Map<String, dynamic>? expectedOutput,
  });
}

/// @nodoc
class __$$TestDataImplCopyWithImpl<$Res>
    extends _$TestDataCopyWithImpl<$Res, _$TestDataImpl>
    implements _$$TestDataImplCopyWith<$Res> {
  __$$TestDataImplCopyWithImpl(
    _$TestDataImpl _value,
    $Res Function(_$TestDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TestData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? inputData = freezed,
    Object? expectedOutput = freezed,
  }) {
    return _then(
      _$TestDataImpl(
        name:
            freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String?,
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String?,
        inputData:
            freezed == inputData
                ? _value._inputData
                : inputData // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>?,
        expectedOutput:
            freezed == expectedOutput
                ? _value._expectedOutput
                : expectedOutput // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TestDataImpl implements _TestData {
  const _$TestDataImpl({
    this.name,
    this.description,
    @JsonKey(name: 'input') final Map<String, dynamic>? inputData,
    @JsonKey(name: 'expected_output')
    final Map<String, dynamic>? expectedOutput,
  }) : _inputData = inputData,
       _expectedOutput = expectedOutput;

  factory _$TestDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestDataImplFromJson(json);

  /// Name or identifier for the test case.
  @override
  final String? name;

  /// Description of what this test case validates.
  @override
  final String? description;

  /// Input data for the test case.
  final Map<String, dynamic>? _inputData;

  /// Input data for the test case.
  @override
  @JsonKey(name: 'input')
  Map<String, dynamic>? get inputData {
    final value = _inputData;
    if (value == null) return null;
    if (_inputData is EqualUnmodifiableMapView) return _inputData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Expected output for the test case.
  final Map<String, dynamic>? _expectedOutput;

  /// Expected output for the test case.
  @override
  @JsonKey(name: 'expected_output')
  Map<String, dynamic>? get expectedOutput {
    final value = _expectedOutput;
    if (value == null) return null;
    if (_expectedOutput is EqualUnmodifiableMapView) return _expectedOutput;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'TestData(name: $name, description: $description, inputData: $inputData, expectedOutput: $expectedOutput)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(
              other._inputData,
              _inputData,
            ) &&
            const DeepCollectionEquality().equals(
              other._expectedOutput,
              _expectedOutput,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    description,
    const DeepCollectionEquality().hash(_inputData),
    const DeepCollectionEquality().hash(_expectedOutput),
  );

  /// Create a copy of TestData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TestDataImplCopyWith<_$TestDataImpl> get copyWith =>
      __$$TestDataImplCopyWithImpl<_$TestDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestDataImplToJson(this);
  }
}

abstract class _TestData implements TestData {
  const factory _TestData({
    final String? name,
    final String? description,
    @JsonKey(name: 'input') final Map<String, dynamic>? inputData,
    @JsonKey(name: 'expected_output')
    final Map<String, dynamic>? expectedOutput,
  }) = _$TestDataImpl;

  factory _TestData.fromJson(Map<String, dynamic> json) =
      _$TestDataImpl.fromJson;

  /// Name or identifier for the test case.
  @override
  String? get name;

  /// Description of what this test case validates.
  @override
  String? get description;

  /// Input data for the test case.
  @override
  @JsonKey(name: 'input')
  Map<String, dynamic>? get inputData;

  /// Expected output for the test case.
  @override
  @JsonKey(name: 'expected_output')
  Map<String, dynamic>? get expectedOutput;

  /// Create a copy of TestData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TestDataImplCopyWith<_$TestDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
