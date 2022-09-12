import 'package:pigeon/pigeon.dart';

class Data {
  String? someText;
  String? otherText;
}

@HostApi()
abstract class DataApi {
  List<Data?> search(String keyword);
}