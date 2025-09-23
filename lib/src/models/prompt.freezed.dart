// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prompt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Prompt _$PromptFromJson(Map<String, dynamic> json) {
  return _Prompt.fromJson(json);
}

/// @nodoc
mixin _$Prompt {
  /// Name or title of the prompt.
  String? get name => throw _privateConstructorUsedError;

  /// Description of the prompt's purpose.
  String? get description => throw _privateConstructorUsedError;

  /// Version of the prompt.
  String? get version => throw _privateConstructorUsedError;

  /// List of messages in the conversation.
  List<Message>? get messages => throw _privateConstructorUsedError;

  /// Model-specific parameters.
  @JsonKey(name: 'model_parameters')
  ModelParameters? get modelParameters => throw _privateConstructorUsedError;

  /// Test cases for validating the prompt.
  @JsonKey(name: 'test_data')
  List<TestData>? get testData => throw _privateConstructorUsedError;

  /// Serializes this Prompt to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Prompt
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PromptCopyWith<Prompt> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromptCopyWith<$Res> {
  factory $PromptCopyWith(Prompt value, $Res Function(Prompt) then) =
      _$PromptCopyWithImpl<$Res, Prompt>;
  @useResult
  $Res call({
    String? name,
    String? description,
    String? version,
    List<Message>? messages,
    @JsonKey(name: 'model_parameters') ModelParameters? modelParameters,
    @JsonKey(name: 'test_data') List<TestData>? testData,
  });

  $ModelParametersCopyWith<$Res>? get modelParameters;
}

/// @nodoc
class _$PromptCopyWithImpl<$Res, $Val extends Prompt>
    implements $PromptCopyWith<$Res> {
  _$PromptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Prompt
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? version = freezed,
    Object? messages = freezed,
    Object? modelParameters = freezed,
    Object? testData = freezed,
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
            version:
                freezed == version
                    ? _value.version
                    : version // ignore: cast_nullable_to_non_nullable
                        as String?,
            messages:
                freezed == messages
                    ? _value.messages
                    : messages // ignore: cast_nullable_to_non_nullable
                        as List<Message>?,
            modelParameters:
                freezed == modelParameters
                    ? _value.modelParameters
                    : modelParameters // ignore: cast_nullable_to_non_nullable
                        as ModelParameters?,
            testData:
                freezed == testData
                    ? _value.testData
                    : testData // ignore: cast_nullable_to_non_nullable
                        as List<TestData>?,
          )
          as $Val,
    );
  }

  /// Create a copy of Prompt
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModelParametersCopyWith<$Res>? get modelParameters {
    if (_value.modelParameters == null) {
      return null;
    }

    return $ModelParametersCopyWith<$Res>(_value.modelParameters!, (value) {
      return _then(_value.copyWith(modelParameters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PromptImplCopyWith<$Res> implements $PromptCopyWith<$Res> {
  factory _$$PromptImplCopyWith(
    _$PromptImpl value,
    $Res Function(_$PromptImpl) then,
  ) = __$$PromptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? name,
    String? description,
    String? version,
    List<Message>? messages,
    @JsonKey(name: 'model_parameters') ModelParameters? modelParameters,
    @JsonKey(name: 'test_data') List<TestData>? testData,
  });

  @override
  $ModelParametersCopyWith<$Res>? get modelParameters;
}

/// @nodoc
class __$$PromptImplCopyWithImpl<$Res>
    extends _$PromptCopyWithImpl<$Res, _$PromptImpl>
    implements _$$PromptImplCopyWith<$Res> {
  __$$PromptImplCopyWithImpl(
    _$PromptImpl _value,
    $Res Function(_$PromptImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Prompt
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? version = freezed,
    Object? messages = freezed,
    Object? modelParameters = freezed,
    Object? testData = freezed,
  }) {
    return _then(
      _$PromptImpl(
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
        version:
            freezed == version
                ? _value.version
                : version // ignore: cast_nullable_to_non_nullable
                    as String?,
        messages:
            freezed == messages
                ? _value._messages
                : messages // ignore: cast_nullable_to_non_nullable
                    as List<Message>?,
        modelParameters:
            freezed == modelParameters
                ? _value.modelParameters
                : modelParameters // ignore: cast_nullable_to_non_nullable
                    as ModelParameters?,
        testData:
            freezed == testData
                ? _value._testData
                : testData // ignore: cast_nullable_to_non_nullable
                    as List<TestData>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PromptImpl implements _Prompt {
  const _$PromptImpl({
    this.name,
    this.description,
    this.version,
    final List<Message>? messages,
    @JsonKey(name: 'model_parameters') this.modelParameters,
    @JsonKey(name: 'test_data') final List<TestData>? testData,
  }) : _messages = messages,
       _testData = testData;

  factory _$PromptImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromptImplFromJson(json);

  /// Name or title of the prompt.
  @override
  final String? name;

  /// Description of the prompt's purpose.
  @override
  final String? description;

  /// Version of the prompt.
  @override
  final String? version;

  /// List of messages in the conversation.
  final List<Message>? _messages;

  /// List of messages in the conversation.
  @override
  List<Message>? get messages {
    final value = _messages;
    if (value == null) return null;
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Model-specific parameters.
  @override
  @JsonKey(name: 'model_parameters')
  final ModelParameters? modelParameters;

  /// Test cases for validating the prompt.
  final List<TestData>? _testData;

  /// Test cases for validating the prompt.
  @override
  @JsonKey(name: 'test_data')
  List<TestData>? get testData {
    final value = _testData;
    if (value == null) return null;
    if (_testData is EqualUnmodifiableListView) return _testData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Prompt(name: $name, description: $description, version: $version, messages: $messages, modelParameters: $modelParameters, testData: $testData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromptImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.version, version) || other.version == version) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.modelParameters, modelParameters) ||
                other.modelParameters == modelParameters) &&
            const DeepCollectionEquality().equals(other._testData, _testData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    description,
    version,
    const DeepCollectionEquality().hash(_messages),
    modelParameters,
    const DeepCollectionEquality().hash(_testData),
  );

  /// Create a copy of Prompt
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PromptImplCopyWith<_$PromptImpl> get copyWith =>
      __$$PromptImplCopyWithImpl<_$PromptImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromptImplToJson(this);
  }
}

abstract class _Prompt implements Prompt {
  const factory _Prompt({
    final String? name,
    final String? description,
    final String? version,
    final List<Message>? messages,
    @JsonKey(name: 'model_parameters') final ModelParameters? modelParameters,
    @JsonKey(name: 'test_data') final List<TestData>? testData,
  }) = _$PromptImpl;

  factory _Prompt.fromJson(Map<String, dynamic> json) = _$PromptImpl.fromJson;

  /// Name or title of the prompt.
  @override
  String? get name;

  /// Description of the prompt's purpose.
  @override
  String? get description;

  /// Version of the prompt.
  @override
  String? get version;

  /// List of messages in the conversation.
  @override
  List<Message>? get messages;

  /// Model-specific parameters.
  @override
  @JsonKey(name: 'model_parameters')
  ModelParameters? get modelParameters;

  /// Test cases for validating the prompt.
  @override
  @JsonKey(name: 'test_data')
  List<TestData>? get testData;

  /// Create a copy of Prompt
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PromptImplCopyWith<_$PromptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
