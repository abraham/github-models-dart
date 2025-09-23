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
      const message = Message(role: 'user', content: 'Hello, how are you?');
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
}
