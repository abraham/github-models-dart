// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prompt.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Prompt _$PromptFromJson(Map<String, dynamic> json) => _Prompt(
  model: json['model'] as String,
  name: json['name'] as String?,
  description: json['description'] as String?,
  version: json['version'] as String?,
  messages: (json['messages'] as List<dynamic>?)
      ?.map((e) => Message.fromJson(e as Map<String, dynamic>))
      .toList(),
  modelParameters: json['model_parameters'] == null
      ? null
      : ModelParameters.fromJson(
          json['model_parameters'] as Map<String, dynamic>,
        ),
  testData: (json['test_data'] as List<dynamic>?)
      ?.map((e) => TestData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PromptToJson(_Prompt instance) => <String, dynamic>{
  'model': instance.model,
  'name': instance.name,
  'description': instance.description,
  'version': instance.version,
  'messages': instance.messages,
  'model_parameters': instance.modelParameters,
  'test_data': instance.testData,
};
