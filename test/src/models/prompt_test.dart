import 'package:test/test.dart';
import 'package:github_models/github_models.dart';

void main() {
  group('Prompt', () {
    test('creates with null fields by default', () {
      const prompt = Prompt();
      expect(prompt.name, isNull);
      expect(prompt.description, isNull);
      expect(prompt.version, isNull);
      expect(prompt.messages, isNull);
      expect(prompt.modelParameters, isNull);
      expect(prompt.testData, isNull);
    });

    test('creates with provided fields', () {
      final prompt = Prompt(
        name: 'Test Prompt',
        description: 'A test prompt for validation',
        version: '1.0.0',
        messages: [
          const Message(role: 'user', content: 'Hello'),
          const Message(role: 'assistant', content: 'Hi there'),
        ],
        modelParameters: const ModelParameters(temperature: 0.7, topP: 0.9),
        testData: [
          TestData(
            name: 'test1',
            inputData: {'input': 'test'},
            expectedOutput: {'output': 'result'},
          ),
        ],
      );

      expect(prompt.name, equals('Test Prompt'));
      expect(prompt.description, equals('A test prompt for validation'));
      expect(prompt.version, equals('1.0.0'));
      expect(prompt.messages, hasLength(2));
      expect(prompt.messages![0].role, equals('user'));
      expect(prompt.messages![0].content, equals('Hello'));
      expect(prompt.modelParameters!.temperature, equals(0.7));
      expect(prompt.modelParameters!.topP, equals(0.9));
      expect(prompt.testData, hasLength(1));
      expect(prompt.testData![0].name, equals('test1'));
    });

    test('creates from YAML map with nested objects', () {
      final yaml = {
        'name': 'YAML Prompt',
        'description': 'Created from YAML',
        'version': '2.0.0',
        'messages': [
          {'role': 'system', 'content': 'You are helpful'},
          {'role': 'user', 'content': 'What is 2+2?'},
        ],
        'model_parameters': {'temperature': 0.5, 'top_p': 0.8},
        'test_data': [
          {
            'name': 'math_test',
            'description': 'Basic math',
            'input': {'question': '2+2'},
            'expected_output': {'answer': '4'},
          },
        ],
      };

      final prompt = Prompt.fromYaml(yaml);

      expect(prompt.name, equals('YAML Prompt'));
      expect(prompt.description, equals('Created from YAML'));
      expect(prompt.version, equals('2.0.0'));
      expect(prompt.messages, hasLength(2));
      expect(prompt.messages![0].role, equals('system'));
      expect(prompt.messages![1].content, equals('What is 2+2?'));
      expect(prompt.modelParameters!.temperature, equals(0.5));
      expect(prompt.modelParameters!.topP, equals(0.8));
      expect(prompt.testData, hasLength(1));
      expect(prompt.testData![0].name, equals('math_test'));
      expect(prompt.testData![0].description, equals('Basic math'));
    });

    test('handles partial YAML data', () {
      final yaml = {
        'name': 'Minimal Prompt',
        'messages': [
          {'role': 'user', 'content': 'Hello'},
        ],
      };

      final prompt = Prompt.fromYaml(yaml);

      expect(prompt.name, equals('Minimal Prompt'));
      expect(prompt.description, isNull);
      expect(prompt.version, isNull);
      expect(prompt.messages, hasLength(1));
      expect(prompt.messages![0].role, equals('user'));
      expect(prompt.modelParameters, isNull);
      expect(prompt.testData, isNull);
    });

    test('converts to JSON with snake_case', () {
      final prompt = Prompt(
        name: 'JSON Prompt',
        modelParameters: const ModelParameters(temperature: 0.6),
        testData: [
          TestData(name: 'test', inputData: {'test': true}),
        ],
      );

      final json = prompt.toJson();
      expect(json['name'], equals('JSON Prompt'));
      expect(json['model_parameters'], isA<ModelParameters>());
      expect(json['model_parameters'].temperature, equals(0.6));
      expect(json['test_data'], isA<List>());
      expect(json['test_data'][0].name, equals('test'));
    });
  });
}