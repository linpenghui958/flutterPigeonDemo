import 'dart:async';

import 'package:flutter/services.dart';
import 'PigeonDemoMessage.dart';

class FlutterPigeonDemo {
  static const MethodChannel _channel =
      const MethodChannel('flutter_pigeon_demo');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<DemoReply> testPigeon() async {
    // 初始化请求参数
    DemoRequest requestParams = DemoRequest()..methodName = 'requestMessage';
    // 通过PigeonDemoApi实例去调用方法
    PigeonDemoApi api = PigeonDemoApi();
    DemoReply reply = await api.getMessage(requestParams);
    return reply;
  }

}
