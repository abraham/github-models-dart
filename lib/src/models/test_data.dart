import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_data.freezed.dart';
part 'test_data.g.dart';

/// Represents test case data for GitHub Models Prompt spec.
@freezed
class TestData with _$TestData {
  const factory TestData({
    /// Name or identifier for the test case.
    String? name,
    
    /// Description of what this test case validates.
    String? description,
    
    /// Input data for the test case.
    @JsonKey(name: 'input') Map<String, dynamic>? inputData,
    
    /// Expected output for the test case.
    @JsonKey(name: 'expected_output') Map<String, dynamic>? expectedOutput,
  }) = _TestData;

  factory TestData.fromJson(Map<String, dynamic> json) =>
      _$TestDataFromJson(json);

  /// Creates TestData from YAML data.
  factory TestData.fromYaml(Map yaml) {
    return TestData.fromJson(Map<String, dynamic>.from(yaml));
  }
}