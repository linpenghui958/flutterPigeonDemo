import 'package:pigeon/pigeon.dart';

class AccountReply {
  String result;
}

class AccountRequest {
  String methodName;
}

// 需要实现的api
@HostApi()
abstract class Api {
  AccountReply getMessage(AccountRequest params);
}

// 输出配置
void configurePigeon(PigeonOptions opts) {
  opts.dartOut = './lib/pigeonDemoMessage.dart';
  opts.objcHeaderOut = 'ios/Classes/pigeonDemoMessage.h';
  opts.objcSourceOut = 'ios/Classes/pigeonDemoMessage.m';
  opts.objcOptions.prefix = 'FLT';
  opts.javaOut =
  'android/src/main/kotlin/com/tme/karaoke/framework/flutter/lib_flutter_account/pigeonDemoMessage.java';
  opts.javaOptions.package = 'package com.example.flutter_pigeon_demo';
}