import 'package:flutter/material.dart';

import 'package:yubaba/yubaba/yubaba.dart';

class Omae extends StatelessWidget {
  final String name;
  final Yubaba yubaba = Yubaba();

  Omae(this.name);

  @override
  Widget build(BuildContext context) {
    String renamed = yubaba.rename(name);
    return Scaffold(
      appBar: AppBar(title: Text("湯婆婆")),
      body: Center(
        child: Text(
          'フン。$nameというのかい。贅沢な名だねぇ。\n'
          '今からお前の名前は$renamedだ。いいかい、$renamedだよ。'
          '分かったら返事をするんだ、$renamed!!',
          style: TextStyle(fontSize: 35),
        ),
      ),
    );
  }
}
