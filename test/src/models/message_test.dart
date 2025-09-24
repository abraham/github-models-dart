import 'package:test/test.dart';
import 'package:github_models/github_models.dart';

void main() {
  group('Message', () {
    test('creates with null fields by default', () {
      const message = Message();
      expect(message.role, isNull);
      expect(message.content, isNull);
    });

    test('creates with provided fields', () {
      const message = Message(
        role: MessageRole.user,
        content: 'Hello, how are you?',
      );
      expect(message.role, equals(MessageRole.user));
      expect(message.content, equals('Hello, how are you?'));
    });

    test('creates from JSON', () {
      final json = {
        'role': 'assistant',
        'content': 'I am doing well, thank you!',
      };
      final message = Message.fromJson(json);
      expect(message.role, equals(MessageRole.assistant));
      expect(message.content, equals('I am doing well, thank you!'));
    });

    test('creates from YAML map', () {
      final yaml = {
        'role': 'system',
        'content': 'You are a helpful assistant.',
      };
      final message = Message.fromYaml(yaml);
      expect(message.role, equals(MessageRole.system));
      expect(message.content, equals('You are a helpful assistant.'));
    });

    test('converts to JSON', () {
      const message = Message(role: MessageRole.user, content: 'Test message');
      final json = message.toJson();
      expect(json['role'], equals('user'));
      expect(json['content'], equals('Test message'));
    });

    test('enum serializes to correct string values', () {
      // Test that the enum values serialize to the expected strings
      const systemMessage = Message(
        role: MessageRole.system,
        content: 'System',
      );
      const userMessage = Message(role: MessageRole.user, content: 'User');
      const assistantMessage = Message(
        role: MessageRole.assistant,
        content: 'Assistant',
      );

      final systemJson = systemMessage.toJson();
      final userJson = userMessage.toJson();
      final assistantJson = assistantMessage.toJson();

      expect(systemJson['role'], equals('system'));
      expect(userJson['role'], equals('user'));
      expect(assistantJson['role'], equals('assistant'));
    });

    test('string values deserialize to correct enum values', () {
      // Test that string values in JSON properly deserialize to enum values
      final systemJson = {'role': 'system', 'content': 'System'};
      final userJson = {'role': 'user', 'content': 'User'};
      final assistantJson = {'role': 'assistant', 'content': 'Assistant'};

      final systemMessage = Message.fromJson(systemJson);
      final userMessage = Message.fromJson(userJson);
      final assistantMessage = Message.fromJson(assistantJson);

      expect(systemMessage.role, equals(MessageRole.system));
      expect(userMessage.role, equals(MessageRole.user));
      expect(assistantMessage.role, equals(MessageRole.assistant));
    });
  });
}
