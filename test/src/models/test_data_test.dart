import 'package:test/test.dart';
import 'package:github_models/github_models.dart';

void main() {
  group('TestData', () {
    test('creates with null fields by default', () {
      const testData = TestData();
      expect(testData.name, isNull);
      expect(testData.description, isNull);
      expect(testData.inputData, isNull);
      expect(testData.expectedOutput, isNull);
    });

    test('creates with provided fields', () {
      final testData = TestData(
        name: 'test1',
        description: 'First test case',
        inputData: {'prompt': 'Hello'},
        expectedOutput: {'response': 'Hi there'},
      );
      expect(testData.name, equals('test1'));
      expect(testData.description, equals('First test case'));
      expect(testData.inputData, equals({'prompt': 'Hello'}));
      expect(testData.expectedOutput, equals({'response': 'Hi there'}));
    });

    test('creates from JSON with snake_case', () {
      final json = {
        'name': 'test2',
        'description': 'Second test',
        'input': {'query': 'What is AI?'},
        'expected_output': {'answer': 'Artificial Intelligence'},
      };
      final testData = TestData.fromJson(json);
      expect(testData.name, equals('test2'));
      expect(testData.description, equals('Second test'));
      expect(testData.inputData, equals({'query': 'What is AI?'}));
      expect(
        testData.expectedOutput,
        equals({'answer': 'Artificial Intelligence'}),
      );
    });

    test('creates from YAML map', () {
      final yaml = {
        'name': 'yaml_test',
        'description': 'YAML test case',
        'input': {'text': 'Process this'},
        'expected_output': {'result': 'Processed'},
      };
      final testData = TestData.fromYaml(yaml);
      expect(testData.name, equals('yaml_test'));
      expect(testData.description, equals('YAML test case'));
      expect(testData.inputData, equals({'text': 'Process this'}));
      expect(testData.expectedOutput, equals({'result': 'Processed'}));
    });

    test('converts to JSON with snake_case', () {
      final testData = TestData(
        name: 'json_test',
        description: 'JSON test',
        inputData: {'data': 'test'},
        expectedOutput: {'output': 'result'},
      );
      final json = testData.toJson();
      expect(json['name'], equals('json_test'));
      expect(json['description'], equals('JSON test'));
      expect(json['input'], equals({'data': 'test'}));
      expect(json['expected_output'], equals({'output': 'result'}));
    });
  });
}
