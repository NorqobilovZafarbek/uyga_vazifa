

import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uygavazifa/common/initialization/storage_initalization.dart';
import 'package:uygavazifa/common/widget.dart';

void main() async {
  $storage = await SharedPreferences.getInstance();
  runApp(App());
}