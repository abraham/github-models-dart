import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

/// Represents a message in the conversation for GitHub Models Prompt spec.
/// Only includes role and content as specified in the requirements.
@freezed
class Message with _$Message {
  const factory Message({
    /// The role of the message sender (e.g., 'user', 'assistant', 'system').
    String? role,
    
    /// The content of the message.
    String? content,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  /// Creates Message from YAML data.
  factory Message.fromYaml(Map yaml) {
    return Message.fromJson(Map<String, dynamic>.from(yaml));
  }
}