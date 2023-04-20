[<img src="https://datadirr.com/datadirr.png" width="200" />](https://datadirr.com)


# http_io

A composable, Future-based library for making HTTP requests with multipart.

## Using

For help getting started with Flutter, view our
[online documentation](https://pub.dev/documentation/http_io/latest), which offers tutorials,
samples, guidance on mobile and web development, and a full API reference.

## Installation

First, add `http_io` as a [dependency in your pubspec.yaml file](https://flutter.dev/docs/development/platform-integration/platform-channels).

In your flutter project add the dependency:

```yml
dependencies:
  ...
  http_io:
```

For help getting started with Flutter, view the online
[documentation](https://flutter.io/).

## Example

Please follow this [example](https://github.com/techdirrdev/http_io/tree/master/example) here.

Send request
```dart
import 'package:http_io/http.dart' as http;

await http.get("https://www.google.com");
```

