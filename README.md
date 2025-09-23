# github-models-dart

A Dart package for working with GitHub Models prompt specifications. This package provides type-safe models for parsing and generating GitHub Models prompt configurations, but does not directly interface with the GitHub Models API.

## Installation

Add this package to your `pubspec.yaml`:

```yaml
dependencies:
  github_models: ^0.1.0
```

Then run:

```bash
dart pub get
```

## Usage

### Basic Import

```dart
import 'package:github_models/github_models.dart';
```

### Loading from YAML Data

The most common use case is parsing YAML prompt specifications:

```dart
import 'package:github_models/github_models.dart';

void main() {
  // Example YAML data as a Map
  final yamlData = {
    'name': 'Code Assistant',
    'description': 'Helps with coding tasks',
    'version': '2.0.0',
    'messages': [
      {'role': 'system', 'content': 'You are a coding assistant.'},
      {'role': 'user', 'content': 'Explain recursion.'},
    ],
    'model_parameters': {
      'temperature': 0.3,
      'top_p': 0.7,
    },
  };

  // Parse YAML data into Prompt model
  final prompt = Prompt.fromYaml(yamlData);
  
  print('Loaded prompt: ${prompt.name}');
}
```

### Creating Prompts Programmatically

Create a simple prompt:

```dart
import 'package:github_models/github_models.dart';

void main() {
  final prompt = Prompt(
    name: 'My Assistant',
    description: 'A helpful AI assistant',
    version: '1.0.0',
    messages: [
      Message(role: 'system', content: 'You are a helpful assistant.'),
      Message(role: 'user', content: 'Hello!'),
    ],
  );

  print('Prompt: ${prompt.name}');
  print('Messages: ${prompt.messages?.length}');
}
```

### Complete Example with All Features

```dart
import 'package:github_models/github_models.dart';

void main() {
  // Create a comprehensive prompt with all available features
  final prompt = Prompt(
    name: 'Creative Writing Assistant',
    description: 'A prompt for creative writing assistance',
    version: '1.2.0',
    messages: [
      Message(
        role: 'system',
        content: 'You are a creative writing assistant that helps users improve their stories.',
      ),
      Message(
        role: 'user',
        content: 'Help me write a short story about a magical forest.',
      ),
    ],
    modelParameters: ModelParameters(
      temperature: 0.8,
      topP: 0.9,
    ),
    testData: [
      TestData(
        name: 'creative_test',
        description: 'Test creative writing capabilities',
        inputData: {
          'prompt': 'Write about a magical forest',
          'style': 'fantasy'
        },
        expectedOutput: {
          'contains': ['forest', 'magical', 'story'],
          'word_count': 200,
        },
      ),
    ],
  );

  // Access prompt properties
  print('Prompt Name: ${prompt.name}');
  print('Version: ${prompt.version}');
  print('Messages: ${prompt.messages?.length}');
  print('Temperature: ${prompt.modelParameters?.temperature}');
  print('Top-P: ${prompt.modelParameters?.topP}');
  print('Test Cases: ${prompt.testData?.length}');

  // Convert to JSON
  final json = prompt.toJson();
  print('JSON Keys: ${json.keys.join(', ')}');
}
```

## API Overview

The package includes the following main classes:

- **`Prompt`** - Root model representing a complete GitHub Models prompt specification
- **`Message`** - Represents individual messages in a conversation with role and content
- **`ModelParameters`** - Contains model-specific parameters like temperature and top_p
- **`TestData`** - Defines test cases for validating prompts

All models support:
- JSON serialization with `toJson()`
- JSON deserialization with `fromJson()`
- YAML parsing with `fromYaml()`
- Immutable data structures with copy functionality

## License

MIT License - see the [LICENSE](LICENSE) file for details.