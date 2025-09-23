// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TestDataImpl _$$TestDataImplFromJson(Map<String, dynamic> json) =>
    _$TestDataImpl(
      name: json['name'] as String?,
      description: json['description'] as String?,
      inputData: json['input'] as Map<String, dynamic>?,
      expectedOutput: json['expected_output'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$TestDataImplToJson(_$TestDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'input': instance.inputData,
      'expected_output': instance.expectedOutput,
    };
