import 'package:flutter/material.dart';
import 'package:method_channel/home_page_view.dart';
import 'package:method_channel/home_page_vm.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ChangeNotifierProvider(
          create: (_) => HomePageVm(), child: const MyHomePage()),
    );
  }
}
