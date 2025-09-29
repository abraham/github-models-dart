import 'package:test/test.dart';
import 'package:github_models/github_models.dart';

void main() {
  group('Prompt', () {
    test('creates with null fields by default', () {
      const prompt = Prompt(model: 'gpt-4');
      expect(prompt.model, equals('gpt-4'));
      expect(prompt.name, isNull);
      expect(prompt.description, isNull);
      expect(prompt.version, isNull);
      expect(prompt.messages, isNull);
      expect(prompt.modelParameters, isNull);
      expect(prompt.testData, isNull);
    });

    test('creates with provided fields', () {
      final prompt = Prompt(
        model: 'gpt-4',
        name: 'Test Prompt',
        description: 'A test prompt for validation',
        version: '1.0.0',
        messages: [
          const Message(role: MessageRole.user, content: 'Hello'),
          const Message(role: MessageRole.assistant, content: 'Hi there'),
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

      expect(prompt.model, equals('gpt-4'));
      expect(prompt.name, equals('Test Prompt'));
      expect(prompt.description, equals('A test prompt for validation'));
      expect(prompt.version, equals('1.0.0'));
      expect(prompt.messages, hasLength(2));
      expect(prompt.messages![0].role, equals(MessageRole.user));
      expect(prompt.messages![0].content, equals('Hello'));
      expect(prompt.modelParameters!.temperature, equals(0.7));
      expect(prompt.modelParameters!.topP, equals(0.9));
      expect(prompt.testData, hasLength(1));
      expect(prompt.testData![0].name, equals('test1'));
    });

    test('creates from YAML map with nested objects', () {
      final yaml = {
        'model': 'gpt-3.5-turbo',
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

      expect(prompt.model, equals('gpt-3.5-turbo'));
      expect(prompt.name, equals('YAML Prompt'));
      expect(prompt.description, equals('Created from YAML'));
      expect(prompt.version, equals('2.0.0'));
      expect(prompt.messages, hasLength(2));
      expect(prompt.messages![0].role, equals(MessageRole.system));
      expect(prompt.messages![1].content, equals('What is 2+2?'));
      expect(prompt.modelParameters!.temperature, equals(0.5));
      expect(prompt.modelParameters!.topP, equals(0.8));
      expect(prompt.testData, hasLength(1));
      expect(prompt.testData![0].name, equals('math_test'));
      expect(prompt.testData![0].description, equals('Basic math'));
    });

    test('handles partial YAML data', () {
      final yaml = {
        'model': 'claude-3',
        'name': 'Minimal Prompt',
        'messages': [
          {'role': 'user', 'content': 'Hello'},
        ],
      };

      final prompt = Prompt.fromYaml(yaml);

      expect(prompt.model, equals('claude-3'));
      expect(prompt.name, equals('Minimal Prompt'));
      expect(prompt.description, isNull);
      expect(prompt.version, isNull);
      expect(prompt.messages, hasLength(1));
      expect(prompt.messages![0].role, equals(MessageRole.user));
      expect(prompt.modelParameters, isNull);
      expect(prompt.testData, isNull);
    });

    test('converts to JSON with snake_case', () {
      final prompt = Prompt(
        model: 'gemini-pro',
        name: 'JSON Prompt',
        modelParameters: const ModelParameters(temperature: 0.6),
        testData: [
          TestData(name: 'test', inputData: {'test': true}),
        ],
      );

      final json = prompt.toJson();
      expect(json['model'], equals('gemini-pro'));
      expect(json['name'], equals('JSON Prompt'));
      expect(json['model_parameters'], isA<ModelParameters>());
      expect(json['model_parameters'].temperature, equals(0.6));
      expect(json['test_data'], isA<List>());
      expect(json['test_data'][0].name, equals('test'));
    });

    test('creates from JSON with model field', () {
      final json = {
        'model': 'claude-2',
        'name': 'JSON Test Prompt',
        'description': 'A prompt created from JSON',
      };

      final prompt = Prompt.fromJson(json);

      expect(prompt.model, equals('claude-2'));
      expect(prompt.name, equals('JSON Test Prompt'));
      expect(prompt.description, equals('A prompt created from JSON'));
    });

    test('requires model field and fails when missing from JSON', () {
      final json = {
        'name': 'Invalid Prompt',
        'description': 'This should fail',
      };

      expect(() => Prompt.fromJson(json), throwsA(isA<TypeError>()));
    });

    test('requires model field and fails when missing from YAML', () {
      final yaml = {
        'name': 'Invalid YAML Prompt',
        'messages': [
          {'role': 'user', 'content': 'Hello'},
        ],
      };

      expect(() => Prompt.fromYaml(yaml), throwsA(isA<TypeError>()));
    });

    group('firstMessage', () {
      test('returns first message with matching role', () {
        final prompt = Prompt(
          model: 'gpt-4',
          messages: [
            const Message(role: MessageRole.system, content: 'System message'),
            const Message(
              role: MessageRole.user,
              content: 'First user message',
            ),
            const Message(
              role: MessageRole.assistant,
              content: 'Assistant response',
            ),
            const Message(
              role: MessageRole.user,
              content: 'Second user message',
            ),
          ],
        );

        final firstUser = prompt.firstMessage(MessageRole.user);
        expect(firstUser, isNotNull);
        expect(firstUser!.role, equals(MessageRole.user));
        expect(firstUser.content, equals('First user message'));

        final firstSystem = prompt.firstMessage(MessageRole.system);
        expect(firstSystem, isNotNull);
        expect(firstSystem!.role, equals(MessageRole.system));
        expect(firstSystem.content, equals('System message'));

        final firstAssistant = prompt.firstMessage(MessageRole.assistant);
        expect(firstAssistant, isNotNull);
        expect(firstAssistant!.role, equals(MessageRole.assistant));
        expect(firstAssistant.content, equals('Assistant response'));
      });

      test('returns null when role not found', () {
        final prompt = Prompt(
          model: 'gpt-4',
          messages: [
            const Message(role: MessageRole.user, content: 'User message'),
          ],
        );

        final systemMessage = prompt.firstMessage(MessageRole.system);
        expect(systemMessage, isNull);

        final assistantMessage = prompt.firstMessage(MessageRole.assistant);
        expect(assistantMessage, isNull);
      });

      test('returns null when messages list is null', () {
        const prompt = Prompt(model: 'gpt-4');

        final userMessage = prompt.firstMessage(MessageRole.user);
        expect(userMessage, isNull);

        final systemMessage = prompt.firstMessage(MessageRole.system);
        expect(systemMessage, isNull);

        final assistantMessage = prompt.firstMessage(MessageRole.assistant);
        expect(assistantMessage, isNull);
      });

      test('returns null when messages list is empty', () {
        const prompt = Prompt(model: 'gpt-4', messages: []);

        final userMessage = prompt.firstMessage(MessageRole.user);
        expect(userMessage, isNull);
      });

      test(
        'returns first message when multiple messages with same role exist',
        () {
          final prompt = Prompt(
            model: 'gpt-4',
            messages: [
              const Message(role: MessageRole.user, content: 'First user'),
              const Message(role: MessageRole.user, content: 'Second user'),
              const Message(role: MessageRole.user, content: 'Third user'),
            ],
          );

          final firstUser = prompt.firstMessage(MessageRole.user);
          expect(firstUser, isNotNull);
          expect(firstUser!.content, equals('First user'));
        },
      );

      test('handles messages with null role', () {
        final prompt = Prompt(
          model: 'gpt-4',
          messages: [
            const Message(role: null, content: 'Null role message'),
            const Message(role: MessageRole.user, content: 'User message'),
          ],
        );

        final userMessage = prompt.firstMessage(MessageRole.user);
        expect(userMessage, isNotNull);
        expect(userMessage!.content, equals('User message'));
      });
    });
  });
}
