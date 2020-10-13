import 'pigeons/pigeonDemoMessage.dart';

import 'dart:io';
import 'package:pigeon/pigeon_lib.dart';

void main(List<String> args) async {
  exit(await Pigeon.run(args));
}
