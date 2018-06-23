library tool.dev;

import 'dart:async';

import 'package:dart_dev/dart_dev.dart' show dev, config;

Future main(List<String> args) async {
  final List<String> paths = ['lib/', 'tool/', 'web/'];

  // Available task configurations:
  config.analyze
    ..strong = true
    ..entryPoints = paths;
  config.format.paths = paths;
  // config.test

  await dev(args);
}
