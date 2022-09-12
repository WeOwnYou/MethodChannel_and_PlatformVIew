import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:method_channel/home_page_vm.dart';
import 'package:method_channel/pigeon.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController =
        context.read<HomePageVm>().textEditingController;
    final setText = context.read<HomePageVm>().setText;
    final text = context.select<HomePageVm, String>((vm) => vm.textExample);
    print(text);
    // return Scaffold(body: Center(child: AndroidView(viewType: 'INTEGRATION_ANDROID', creationParams: text,)),);
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        TextField(
          controller: textEditingController,
        ),
        ElevatedButton(
          onPressed: setText,
          child: const Text('Send text'),
        ),
        SizedBox(
          height: 200,
          child: AndroidView(
            viewType: 'INTEGRATION_ANDROID',
            // creationParams: {'initial_text': text},
            creationParams: Data(someText: 'text'),
            creationParamsCodec: DataApi.codec,
          ),
        ),
      ]),
    );
  }
}
