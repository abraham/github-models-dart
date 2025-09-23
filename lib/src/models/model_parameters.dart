import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_parameters.freezed.dart';
part 'model_parameters.g.dart';

/// Model-specific parameters for GitHub Models Prompt spec.
/// Only includes temperature and topP as specified in the requirements.
@freezed
class ModelParameters with _$ModelParameters {
  const factory ModelParameters({
    /// Controls randomness in the model's output.
    /// Higher values make output more random, lower values more deterministic.
    double? temperature,
    
    /// Controls diversity via nucleus sampling.
    /// Lower values focus on more likely tokens.
    @JsonKey(name: 'top_p') double? topP,
  }) = _ModelParameters;

  factory ModelParameters.fromJson(Map<String, dynamic> json) =>
      _$ModelParametersFromJson(json);

  /// Creates ModelParameters from YAML data.
  factory ModelParameters.fromYaml(Map yaml) {
    return ModelParameters.fromJson(Map<String, dynamic>.from(yaml));
  }
}