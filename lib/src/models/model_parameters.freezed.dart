// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ModelParameters _$ModelParametersFromJson(Map<String, dynamic> json) {
  return _ModelParameters.fromJson(json);
}

/// @nodoc
mixin _$ModelParameters {
  /// Controls randomness in the model's output.
  /// Higher values make output more random, lower values more deterministic.
  double? get temperature => throw _privateConstructorUsedError;

  /// Controls diversity via nucleus sampling.
  /// Lower values focus on more likely tokens.
  @JsonKey(name: 'top_p')
  double? get topP => throw _privateConstructorUsedError;

  /// Serializes this ModelParameters to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModelParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModelParametersCopyWith<ModelParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelParametersCopyWith<$Res> {
  factory $ModelParametersCopyWith(
    ModelParameters value,
    $Res Function(ModelParameters) then,
  ) = _$ModelParametersCopyWithImpl<$Res, ModelParameters>;
  @useResult
  $Res call({double? temperature, @JsonKey(name: 'top_p') double? topP});
}

/// @nodoc
class _$ModelParametersCopyWithImpl<$Res, $Val extends ModelParameters>
    implements $ModelParametersCopyWith<$Res> {
  _$ModelParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModelParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? temperature = freezed, Object? topP = freezed}) {
    return _then(
      _value.copyWith(
            temperature:
                freezed == temperature
                    ? _value.temperature
                    : temperature // ignore: cast_nullable_to_non_nullable
                        as double?,
            topP:
                freezed == topP
                    ? _value.topP
                    : topP // ignore: cast_nullable_to_non_nullable
                        as double?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ModelParametersImplCopyWith<$Res>
    implements $ModelParametersCopyWith<$Res> {
  factory _$$ModelParametersImplCopyWith(
    _$ModelParametersImpl value,
    $Res Function(_$ModelParametersImpl) then,
  ) = __$$ModelParametersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? temperature, @JsonKey(name: 'top_p') double? topP});
}

/// @nodoc
class __$$ModelParametersImplCopyWithImpl<$Res>
    extends _$ModelParametersCopyWithImpl<$Res, _$ModelParametersImpl>
    implements _$$ModelParametersImplCopyWith<$Res> {
  __$$ModelParametersImplCopyWithImpl(
    _$ModelParametersImpl _value,
    $Res Function(_$ModelParametersImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ModelParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? temperature = freezed, Object? topP = freezed}) {
    return _then(
      _$ModelParametersImpl(
        temperature:
            freezed == temperature
                ? _value.temperature
                : temperature // ignore: cast_nullable_to_non_nullable
                    as double?,
        topP:
            freezed == topP
                ? _value.topP
                : topP // ignore: cast_nullable_to_non_nullable
                    as double?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelParametersImpl implements _ModelParameters {
  const _$ModelParametersImpl({
    this.temperature,
    @JsonKey(name: 'top_p') this.topP,
  });

  factory _$ModelParametersImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelParametersImplFromJson(json);

  /// Controls randomness in the model's output.
  /// Higher values make output more random, lower values more deterministic.
  @override
  final double? temperature;

  /// Controls diversity via nucleus sampling.
  /// Lower values focus on more likely tokens.
  @override
  @JsonKey(name: 'top_p')
  final double? topP;

  @override
  String toString() {
    return 'ModelParameters(temperature: $temperature, topP: $topP)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelParametersImpl &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.topP, topP) || other.topP == topP));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, temperature, topP);

  /// Create a copy of ModelParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelParametersImplCopyWith<_$ModelParametersImpl> get copyWith =>
      __$$ModelParametersImplCopyWithImpl<_$ModelParametersImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelParametersImplToJson(this);
  }
}

abstract class _ModelParameters implements ModelParameters {
  const factory _ModelParameters({
    final double? temperature,
    @JsonKey(name: 'top_p') final double? topP,
  }) = _$ModelParametersImpl;

  factory _ModelParameters.fromJson(Map<String, dynamic> json) =
      _$ModelParametersImpl.fromJson;

  /// Controls randomness in the model's output.
  /// Higher values make output more random, lower values more deterministic.
  @override
  double? get temperature;

  /// Controls diversity via nucleus sampling.
  /// Lower values focus on more likely tokens.
  @override
  @JsonKey(name: 'top_p')
  double? get topP;

  /// Create a copy of ModelParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModelParametersImplCopyWith<_$ModelParametersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
