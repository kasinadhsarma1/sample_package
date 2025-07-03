# Hello World Flutter Package

A simple Flutter package that provides a Hello World widget with modern Material Design UI.

## Features

- 🎨 **HelloWorldApp** - Complete Material App with Hello World UI
- 📱 **HelloWorldPage** - Standalone Hello World widget  
- 🎯 **Modern Design** - Material Design 3 theming
- 🦋 **Flutter Dash** - Includes Flutter mascot icon
- 📦 **Easy Integration** - Simple to add to any Flutter project

## Installation

Add this package to your `pubspec.yaml`:

```yaml
dependencies:
  helloworld: ^1.0.0
```

## Usage

### Use the complete app:
```dart
import 'package:flutter/material.dart';
import 'package:helloworld/helloworld.dart';

void main() {
  runApp(const HelloWorldApp());
}
```

### Use just the Hello World page in your existing app:
```dart
import 'package:flutter/material.dart';
import 'package:helloworld/helloworld.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HelloWorldPage(), // Add to your existing app
    );
  }
}
```

## Example

See the `/example` folder for a complete example app.

## Development

### Running Tests
```bash
flutter test
```

### Code Analysis
```bash
flutter analyze
```

### Formatting
```bash
dart format .
```

## Contributing

1. Fork the repository
2. Create your feature branch
3. Make your changes
4. Add tests for your changes
5. Ensure all tests pass
6. Create a Pull Request

## License

MIT License - see LICENSE file for details.
