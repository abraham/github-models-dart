import 'package:test/test.dart';
import 'package:github_models/github_models.dart';

void main() {
  group('GitHub Models Package', () {
    test('package exports', () {
      // Placeholder test to verify package structure
      expect(1, 1);
    });
  });

  group('Message', () {
    test('creates with null fields by default', () {
      const message = Message();
      expect(message.role, isNull);
      expect(message.content, isNull);
    });

    test('creates with provided fields', () {
      const message = Message(
        role: 'user',
        content: 'Hello, how are you?',
      );
      expect(message.role, equals('user'));
      expect(message.content, equals('Hello, how are you?'));
    });

    test('creates from JSON', () {
      final json = {
        'role': 'assistant',
        'content': 'I am doing well, thank you!',
      };
      final message = Message.fromJson(json);
      expect(message.role, equals('assistant'));
      expect(message.content, equals('I am doing well, thank you!'));
    });

    test('creates from YAML map', () {
      final yaml = {
        'role': 'system',
        'content': 'You are a helpful assistant.',
      };
      final message = Message.fromYaml(yaml);
      expect(message.role, equals('system'));
      expect(message.content, equals('You are a helpful assistant.'));
    });

    test('converts to JSON', () {
      const message = Message(role: 'user', content: 'Test message');
      final json = message.toJson();
      expect(json['role'], equals('user'));
      expect(json['content'], equals('Test message'));
    });
  });

  group('ModelParameters', () {
    test('creates with null fields by default', () {
      const params = ModelParameters();
      expect(params.temperature, isNull);
      expect(params.topP, isNull);
    });

    test('creates with provided fields', () {
      const params = ModelParameters(
        temperature: 0.7,
        topP: 0.9,
      );
      expect(params.temperature, equals(0.7));
      expect(params.topP, equals(0.9));
    });

    test('creates from JSON with snake_case', () {
      final json = {
        'temperature': 0.8,
        'top_p': 0.95,
      };
      final params = ModelParameters.fromJson(json);
      expect(params.temperature, equals(0.8));
      expect(params.topP, equals(0.95));
    });

    test('creates from YAML map', () {
      final yaml = {
        'temperature': 0.5,
        'top_p': 0.8,
      };
      final params = ModelParameters.fromYaml(yaml);
      expect(params.temperature, equals(0.5));
      expect(params.topP, equals(0.8));
    });

    test('converts to JSON with snake_case', () {
      const params = ModelParameters(temperature: 0.6, topP: 0.85);
      final json = params.toJson();
      expect(json['temperature'], equals(0.6));
      expect(json['top_p'], equals(0.85));
    });
  });

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
      expect(testData.expectedOutput, equals({'answer': 'Artificial Intelligence'}));
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
        'model_parameters': {
          'temperature': 0.5,
          'top_p': 0.8,
        },
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