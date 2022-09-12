import 'package:flutter/services.dart';
import 'package:method_channel/pigeon.dart';

class PlatformService{
  final method = const MethodChannel('CALL_METHOD');

  Future<String> callMethodChannel(String someText) async {
    final argument = Data(someText: someText);
    try{
      return await method.invokeMethod('CALL', argument);
    }on PlatformException catch(e){
      print('Fail: ${e.message}');
      return 'Fail';
    }
  }
}