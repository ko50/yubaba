import 'package:flutter/material.dart';

import 'package:yubaba/my_yubaba.dart';
import 'package:yubaba/integrated_yubaba.dart';
import 'package:yubaba/ux_yubaba.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '湯婆婆',
      theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
      home: UxYubaba(),
    );
  }
}
