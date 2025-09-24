import 'package:test/test.dart';
import 'package:github_models/github_models.dart';

void main() {
  group('GitHub Models Package', () {
    test('package exports', () {
      // Verify that all main classes are properly exported
      expect(() => Message(), returnsNormally);
      expect(() => ModelParameters(), returnsNormally);
      expect(() => TestData(), returnsNormally);
      expect(() => Prompt(model: 'test-model'), returnsNormally);
    });

    test('integration - can create complete prompt with all components', () {
      final prompt = Prompt(
        model: 'gpt-4',
        name: 'Integration Test Prompt',
        description: 'Tests integration between all components',
        version: '1.0.0',
        messages: [
          const Message(
            role: MessageRole.system,
            content: 'You are a helpful assistant',
          ),
          const Message(role: MessageRole.user, content: 'Hello world'),
        ],
        modelParameters: const ModelParameters(temperature: 0.7, topP: 0.9),
        testData: [
          TestData(
            name: 'integration_test',
            description: 'Integration test case',
            inputData: {'query': 'test'},
            expectedOutput: {'response': 'success'},
          ),
        ],
      );

      // Verify all components are properly integrated
      expect(prompt.model, equals('gpt-4'));
      expect(prompt.name, equals('Integration Test Prompt'));
      expect(prompt.messages, hasLength(2));
      expect(prompt.modelParameters, isNotNull);
      expect(prompt.testData, hasLength(1));

      // Verify serialization works end-to-end
      final json = prompt.toJson();
      expect(json, isA<Map<String, dynamic>>());
    });
  });
}
