import 'package:test/test.dart';
import 'package:github_models/github_models.dart';

void main() {
  group('ModelParameters', () {
    test('creates with null fields by default', () {
      const params = ModelParameters();
      expect(params.temperature, isNull);
      expect(params.topP, isNull);
    });

    test('creates with provided fields', () {
      const params = ModelParameters(temperature: 0.7, topP: 0.9);
      expect(params.temperature, equals(0.7));
      expect(params.topP, equals(0.9));
    });

    test('creates from JSON with snake_case', () {
      final json = {'temperature': 0.8, 'top_p': 0.95};
      final params = ModelParameters.fromJson(json);
      expect(params.temperature, equals(0.8));
      expect(params.topP, equals(0.95));
    });

    test('creates from YAML map', () {
      final yaml = {'temperature': 0.5, 'top_p': 0.8};
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
}