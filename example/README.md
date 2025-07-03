# Hello World Package Example

This example demonstrates how to use the Hello World Flutter package.

## Usage

```dart
import 'package:flutter/material.dart';
import 'package:helloworld/helloworld.dart';

void main() {
  runApp(const HelloWorldApp());
}
```

## Custom Usage

You can also use individual components:

```dart
import 'package:flutter/material.dart';
import 'package:helloworld/helloworld.dart';

void main() {
  runApp(MyCustomApp());
}

class MyCustomApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Hello World',
      home: HelloWorldPage(), // Use the Hello World page in your own app
    );
  }
}
```

## Running the Example

```bash
cd example
flutter pub get
flutter run
```
