# resend dart

[![pub package](https://img.shields.io/pub/v/resend.svg)](https://pub.dev/packages/resend)

[![pub points](https://img.shields.io/pub/points/resend?color=2E8B57&label=pub%20points)](https://pub.dev/packages/resend/score)

Dart library for the Resend API.

## Platform Support

| Android | iOS | MacOS | Web | Linux | Windows |
| :-----: | :-: | :---: | :-: | :---: | :-----: |
|   ✅    | ✅  |  ✅   | ✅  |  ✅   |   ✅    |

## Setup

First, you need to get an API key, which is available in the [Resend Dashboard](https://resend.com).

# Usage

Import `package:resend/resend.dart`

```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Resend(apiKey: "re_123456789");

    return MaterialApp(
      ...
    );
  }
}
```

### Create Instance of Resend

```dart
final resend = Resend.instance;
```

## Usage

Send your first email:

```dart
resend.sendEmail(
    from: 'you@example.com',
    to: 'user@gmail.com',
    subject: 'hello world',
    text: 'it works!',
);
```

## Send email using HTML

Send an email custom HTML content:

```dart
resend.sendEmail(
    from: 'you@example.com',
    to: 'user@gmail.com',
    subject: 'hello world',
    text: '<strong>it works!</strong>',
);
```

## Learn more

- [API Documentation](https://dipenmaharjan.com.np/)
- [Plugin documentation website](https://dipenmaharjan.com.np/)

## License

MIT License
