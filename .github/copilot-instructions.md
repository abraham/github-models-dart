# GitHub Copilot Instructions

## Project Overview

This is a **Dart package** called `github_models` for working with GitHub Models prompt specifications. This package provides type-safe models for parsing and generating GitHub Models prompt configurations, but does not directly interface with the GitHub Models API.

## Key Architecture

### Core Models
- **`Prompt`** - Root model representing a complete GitHub Models prompt specification
- **`Message`** - Individual messages in a conversation with role and content
- **`ModelParameters`** - Model-specific parameters like temperature and top_p
- **`TestData`** - Test cases for validating prompts

### Features
- JSON serialization/deserialization with `toJson()` and `fromJson()`
- YAML parsing with `fromYaml()`
- Immutable data structures using Freezed
- Copy functionality with `copyWith()`

## Development Standards

Before any work can be considered complete, these commands MUST ALL PASS:

```bash
dart test                                                    # All tests must pass
dart format --set-exit-if-changed .                        # Code must be properly formatted
dart analyze                                                # Static analysis must pass (warnings must be fixed too)
dart run build_runner build --delete-conflicting-outputs   # Code generation must succeed
```

## Code Generation

This project uses **Freezed** and **json_serializable** for code generation. Generated files include:
- `*.freezed.dart` files for immutable data classes
- `*.g.dart` files for JSON serialization

Always run `dart run build_runner build --delete-conflicting-outputs` after modifying model classes.

## Testing

- All models have comprehensive tests in `test/src/models/`
- Tests cover JSON/YAML parsing, serialization, and model creation
- Integration tests verify the complete package functionality
- Currently has 22 passing tests

## Dependencies

Key dependencies include:
- `freezed_annotation` and `freezed` for immutable models
- `json_annotation` and `json_serializable` for JSON handling
- `yaml` for YAML parsing support
- Standard Dart test framework

## Code Style

- Use Freezed for all model classes
- Follow Dart naming conventions (snake_case for JSON keys)
- Maintain immutability patterns
- Add comprehensive tests for new features
- Include documentation comments for public APIs

## Common Tasks

1. **Adding a new model**: Create model class with Freezed annotations, run build_runner, add tests
2. **Modifying existing models**: Update model, regenerate with build_runner, update tests
3. **Adding functionality**: Follow existing patterns, ensure tests pass, maintain type safety

Remember: This package focuses on **type-safe model definitions** for GitHub Models prompt specs, not API integration.
