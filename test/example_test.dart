import 'dart:io';
import 'package:test/test.dart';
import 'package:github_models/github_models.dart';
import 'package:yaml/yaml.dart';

void main() {
  group('Example prompt file loading', () {
    test('loads example.prompt.yml correctly', () async {
      final file = File('example/example.prompt.yml');
      expect(
        file.existsSync(),
        isTrue,
        reason: 'example.prompt.yml should exist',
      );

      final yamlString = await file.readAsString();
      final yamlData = loadYaml(yamlString);
      final mapData = _yamlToMap(yamlData);
      final prompt = Prompt.fromYaml(mapData);

      expect(prompt.name, equals('Text Summarizer'));
      expect(prompt.description, equals('Summarizes input text concisely'));
      expect(prompt.messages, hasLength(2));
      expect(prompt.messages![0].role, equals(MessageRole.system));
      expect(prompt.messages![1].role, equals(MessageRole.user));
      expect(prompt.modelParameters?.temperature, equals(0.5));
      expect(prompt.testData, hasLength(1));
      expect(prompt.testData![0].name, equals('summarization_test'));
    });

    test('loads minimal.prompt.yml correctly', () async {
      final file = File('example/minimal.prompt.yml');
      expect(
        file.existsSync(),
        isTrue,
        reason: 'minimal.prompt.yml should exist',
      );

      final yamlString = await file.readAsString();
      final yamlData = loadYaml(yamlString);
      final mapData = _yamlToMap(yamlData);
      final prompt = Prompt.fromYaml(mapData);

      expect(prompt.name, isNull);
      expect(prompt.description, isNull);
      expect(prompt.messages, hasLength(1));
      expect(prompt.messages![0].role, equals(MessageRole.system));
      expect(
        prompt.messages![0].content,
        equals(
          'You are a text summarizer. Your only job is to summarize text given to you.',
        ),
      );
      expect(prompt.modelParameters, isNull);
      expect(prompt.testData, isNull);
    });

    test('loads fixture example.prompt.yml correctly', () async {
      final file = File('test/fixtures/example.prompt.yml');
      expect(
        file.existsSync(),
        isTrue,
        reason: 'fixture example.prompt.yml should exist',
      );

      final yamlString = await file.readAsString();
      final yamlData = loadYaml(yamlString);
      final mapData = _yamlToMap(yamlData);
      final prompt = Prompt.fromYaml(mapData);

      expect(prompt.name, equals('Text Summarizer'));
      expect(prompt.description, equals('Summarizes input text concisely'));
      expect(prompt.messages, hasLength(2));
      expect(prompt.messages![0].role, equals(MessageRole.system));
      expect(prompt.messages![1].role, equals(MessageRole.user));
      expect(prompt.modelParameters?.temperature, equals(0.5));
      expect(prompt.testData, hasLength(1));
      expect(prompt.testData![0].name, equals('summarization_test'));
    });

    test('prompt files can be loaded and serialized', () async {
      // Test both files can be processed through the full pipeline
      final files = [
        'example/example.prompt.yml',
        'example/minimal.prompt.yml',
      ];

      for (final filePath in files) {
        final file = File(filePath);
        final yamlString = await file.readAsString();
        final yamlData = loadYaml(yamlString);
        final mapData = _yamlToMap(yamlData);
        final prompt = Prompt.fromYaml(mapData);

        // Should be able to serialize back to JSON
        final json = prompt.toJson();
        expect(json, isA<Map<String, dynamic>>());
        expect(json.containsKey('name'), isTrue);
        expect(json.containsKey('messages'), isTrue);
      }
    });
  });
}

/// Recursively converts YamlMap/YamlList to regular Dart Map/List
dynamic _yamlToMap(dynamic yaml) {
  if (yaml is YamlMap) {
    return {for (final key in yaml.keys) key.toString(): _yamlToMap(yaml[key])};
  } else if (yaml is YamlList) {
    return yaml.map(_yamlToMap).toList();
  }
  return yaml;
}
