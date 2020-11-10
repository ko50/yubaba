import 'dart:math';

import 'package:flutter/material.dart';

class UxYubaba extends StatefulWidget {
  @override
  _UxYubabaState createState() => _UxYubabaState();
}

class _UxYubabaState extends State<UxYubaba> {
  final TextEditingController _nameController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  bool _predged = false;
  String name, newName;

  Widget _pledgeForm() => Flexible(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '誓約書だよ。そこに名前を書きな。',
                style: TextStyle(fontSize: 20),
              ),
              Form(
                key: _formkey,
                child: TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(hintText: '千尋'),
                  validator: (s) => s.isEmpty ? 'ちゃんと名前を書きな!' : null,
                ),
              ),
              RaisedButton(
                onPressed: () {
                  if (_formkey.currentState.validate())
                    setState(() => _predged = true);
                },
                child: Text('誓約'),
              ),
            ],
          ),
        ),
      );

  Widget _yourName() {
    name = _nameController.text;
    final int newNameIndex = Random().nextInt(name.length);
    newName = name.substring(newNameIndex, newNameIndex + 1);

    return Text(
      'フン。$nameというのかい。贅沢な名だねぇ。\n\n'
      '今からお前の名前は$newNameだ。いいかい、$newNameだよ。\n'
      '分かったら返事をするんだ、$newName!!',
      style: TextStyle(fontSize: 20),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('湯婆婆'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: 80.0,
          right: 20.0,
          left: 20.0,
          bottom: 30.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _pledgeForm(),
            Divider(height: 10),
            if (_predged) _yourName(),
          ],
        ),
      ),
    );
  }
}
