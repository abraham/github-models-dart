import 'package:github_models/github_models.dart';

void main() {
  // Example YAML data representing a GitHub Models Prompt spec
  final yamlData = {
    'name': 'Creative Writing Assistant',
    'description': 'A prompt for creative writing assistance',
    'version': '1.2.0',
    'messages': [
      {
        'role': 'system',
        'content': 'You are a creative writing assistant that helps users improve their stories.',
      },
      {
        'role': 'user', 
        'content': 'Help me write a short story about a magical forest.',
      }
    ],
    'model_parameters': {
      'temperature': 0.8,
      'top_p': 0.9,
    },
    'test_data': [
      {
        'name': 'creative_test',
        'description': 'Test creative writing capabilities',
        'input': {
          'prompt': 'Write about a magical forest',
          'style': 'fantasy'
        },
        'expected_output': {
          'contains': ['forest', 'magical', 'story'],
          'word_count': 200
        }
      }
    ]
  };
  
  // Parse YAML data into Prompt model
  final prompt = Prompt.fromYaml(yamlData);
  
  print('Prompt Name: ${prompt.name}');
  print('Version: ${prompt.version}');
  print('Messages: ${prompt.messages?.length}');
  print('Temperature: ${prompt.modelParameters?.temperature}');
  print('Top-P: ${prompt.modelParameters?.topP}');
  print('Test Cases: ${prompt.testData?.length}');
  
  // Access individual messages
  if (prompt.messages != null) {
    for (var i = 0; i < prompt.messages!.length; i++) {
      final message = prompt.messages![i];
      print('Message $i - Role: ${message.role}, Content: ${message.content?.substring(0, 50)}...');
    }
  }
  
  // Convert back to JSON
  final json = prompt.toJson();
  print('Converted to JSON successfully: ${json.keys.join(', ')}');
}