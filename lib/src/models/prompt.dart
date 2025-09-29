import 'package:freezed_annotation/freezed_annotation.dart';
import 'message.dart';
import 'model_parameters.dart';
import 'test_data.dart';

part 'prompt.freezed.dart';
part 'prompt.g.dart';

/// Root model for GitHub Models Prompt YAML spec.
@freezed
abstract class Prompt with _$Prompt {
  const factory Prompt({
    /// The model to use for this prompt.
    required String model,

    /// Name or title of the prompt.
    String? name,

    /// Description of the prompt's purpose.
    String? description,

    /// Version of the prompt.
    String? version,

    /// List of messages in the conversation.
    List<Message>? messages,

    /// Model-specific parameters.
    @JsonKey(name: 'model_parameters') ModelParameters? modelParameters,

    /// Test cases for validating the prompt.
    @JsonKey(name: 'test_data') List<TestData>? testData,
  }) = _Prompt;

  const Prompt._();

  /// Returns the first message with the specified role, or null if not found.
  Message? firstMessage(MessageRole role) {
    final messageList = messages;
    if (messageList == null) return null;

    for (final message in messageList) {
      if (message.role == role) {
        return message;
      }
    }

    return null;
  }

  factory Prompt.fromJson(Map<String, dynamic> json) => _$PromptFromJson(json);

  /// Creates Prompt from YAML data.
  factory Prompt.fromYaml(Map yaml) {
    final jsonData = Map<String, dynamic>.from(yaml);

    // Convert messages from YAML
    if (jsonData['messages'] != null) {
      final messagesList = jsonData['messages'] as List;
      jsonData['messages'] = messagesList
          .map((msg) => Message.fromYaml(Map.from(msg)).toJson())
          .toList();
    }

    // Convert model_parameters from YAML
    if (jsonData['model_parameters'] != null) {
      jsonData['model_parameters'] = ModelParameters.fromYaml(
        Map.from(jsonData['model_parameters']),
      ).toJson();
    }

    // Convert test_data from YAML
    if (jsonData['test_data'] != null) {
      final testDataList = jsonData['test_data'] as List;
      jsonData['test_data'] = testDataList
          .map((test) => TestData.fromYaml(Map.from(test)).toJson())
          .toList();
    }

    return Prompt.fromJson(jsonData);
  }
}
