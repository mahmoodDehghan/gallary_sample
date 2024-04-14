import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:pubspec_yaml/pubspec_yaml.dart';

Future<Response> onRequest(RequestContext context) async {
  final pubspecYaml = File('pubspec.yaml').readAsStringSync().toPubspecYaml();

  return Response(
    body:
        'Server Version:${pubspecYaml.version.valueOr(() => "NotSpecified!")}',
  );
}
