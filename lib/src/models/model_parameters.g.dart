// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ModelParameters _$ModelParametersFromJson(Map<String, dynamic> json) =>
    _ModelParameters(
      temperature: (json['temperature'] as num?)?.toDouble(),
      topP: (json['top_p'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ModelParametersToJson(_ModelParameters instance) =>
    <String, dynamic>{
      'temperature': instance.temperature,
      'top_p': instance.topP,
    };
