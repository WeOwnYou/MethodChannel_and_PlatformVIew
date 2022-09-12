import 'package:flutter/material.dart';
import 'package:method_channel/service.dart';

class HomePageVm extends ChangeNotifier {
  final PlatformService service;
  final TextEditingController textEditingController;
  String textExample;

  HomePageVm()
      : service = PlatformService(),
        textEditingController = TextEditingController(),
        textExample = 'text';

  Future<void> setText() async{
    textExample = await service.callMethodChannel(textEditingController.text);
    notifyListeners();
  }
}
