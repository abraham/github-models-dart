import 'dart:io';
import 'package:github_models/github_models.dart';
import 'package:yaml/yaml.dart';

void main() async {
  // Load prompt files from disk
  await loadPromptFile('example/example.prompt.yml');
  print('---');
  await loadPromptFile('example/minimal.prompt.yml');
}

/// Recursively converts YamlMap/YamlList to regular Dart Map/List
dynamic _yamlToMap(dynamic yaml) {
  if (yaml is YamlMap) {
    return {for (final key in yaml.keys) key.toString(): _yamlToMap(yaml[key])};
  } else if (yaml is YamlList) {
    return yaml.map(_yamlToMap).toList();
  }
  return yaml;
}

Future<void> loadPromptFile(String filePath) async {
  try {
    print('Loading prompt from: $filePath');

    // Read YAML file
    final file = File(filePath);
    final yamlString = await file.readAsString();

    // Parse YAML string
    final yamlData = loadYaml(yamlString);

    // Convert YamlMap to regular Map recursively
    final mapData = _yamlToMap(yamlData);

    // Convert to Map and parse into Prompt model
    final prompt = Prompt.fromYaml(mapData);

    // Display prompt information
    print('Model: ${prompt.model}');
    print('Prompt Name: ${prompt.name ?? "Unnamed"}');
    print('Description: ${prompt.description ?? "No description"}');
    print('Version: ${prompt.version ?? "No version"}');
    print('Messages: ${prompt.messages?.length ?? 0}');
    print('Temperature: ${prompt.modelParameters?.temperature ?? "Not set"}');
    print('Top-P: ${prompt.modelParameters?.topP ?? "Not set"}');
    print('Test Cases: ${prompt.testData?.length ?? 0}');

    // Access individual messages
    if (prompt.messages != null) {
      for (var i = 0; i < prompt.messages!.length; i++) {
        final message = prompt.messages![i];
        final content = message.content ?? '';
        final truncatedContent = content.length > 50
            ? '${content.substring(0, 50)}...'
            : content;
        print('Message $i - Role: ${message.role}, Content: $truncatedContent');
      }
    }

    // Convert back to JSON to demonstrate serialization
    final json = prompt.toJson();
    print('Converted to JSON successfully: ${json.keys.join(', ')}');

    print('Successfully loaded and parsed: $filePath');
  } catch (e) {
    print('Error loading $filePath: $e');
  }
}
