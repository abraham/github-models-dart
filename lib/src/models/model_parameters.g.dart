// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModelParametersImpl _$$ModelParametersImplFromJson(
  Map<String, dynamic> json,
) => _$ModelParametersImpl(
  temperature: (json['temperature'] as num?)?.toDouble(),
  topP: (json['top_p'] as num?)?.toDouble(),
);

Map<String, dynamic> _$$ModelParametersImplToJson(
  _$ModelParametersImpl instance,
) => <String, dynamic>{
  'temperature': instance.temperature,
  'top_p': instance.topP,
};
