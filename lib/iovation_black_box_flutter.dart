
import 'dart:async';

import 'package:flutter/services.dart';

class IovationBlackBoxFlutter {
  static const MethodChannel _channel = MethodChannel('iovation_black_box_flutter');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
  static Future<String?> get initIovation async {
    final String? version = await _channel.invokeMethod('initIovation');
    return version;
  }
}
