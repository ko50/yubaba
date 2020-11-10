import 'package:flutter/material.dart';
import 'package:yubaba/view/omae.dart';

class Pledge extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();

  Widget _pledge() => TextField(
        controller: _nameController,
        decoration: InputDecoration(hintText: '千尋'),
      );

  Widget _confirmButton(BuildContext context) => MaterialButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => Omae(_nameController.text)),
        ),
        child: Text('誓約'),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('湯婆婆')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            '誓約書だよ。そこに名前を書きな。',
            style: TextStyle(fontSize: 35),
          ),
          _pledge(),
          _confirmButton(context),
        ],
      ),
    );
  }
}
