import 'dart:math';

import 'package:flutter/material.dart';

class IntegratedYubaba extends StatefulWidget {
  @override
  _IntegratedYubabaState createState() => _IntegratedYubabaState();
}

class _IntegratedYubabaState extends State<IntegratedYubaba> {
  final TextEditingController _nameController = TextEditingController();

  bool _predged = false;
  String name = '', newName = '';

  void _stealName() {
    name = _nameController.text;
    final int newNameIndex = Random().nextInt(name.length);
    newName = name.substring(newNameIndex, newNameIndex + 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('湯婆婆'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              '誓約書だよ。そこに名前を書きな。',
              style: TextStyle(fontSize: 20),
            ),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(hintText: '千尋'),
            ),
            RaisedButton(
              onPressed: () => setState(() {
                _stealName();
                _predged = true;
              }),
              child: Text('誓約'),
            ),
            if (_predged)
              Text(
                'フン。$nameというのかい。贅沢な名だねぇ。\n'
                '\n'
                '今からお前の名前は$newNameだ。いいかい、$newNameだよ。\n'
                '分かったら返事をするんだ、$newName!!',
                style: TextStyle(fontSize: 20),
              ),
          ],
        ),
      ),
    );
  }
}
