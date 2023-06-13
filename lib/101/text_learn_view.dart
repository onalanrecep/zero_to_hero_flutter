import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    String data = 'Merhaba Dostum';
    String data2 = 'Hadi canım';
    String titleApp = 'Haydi Merhaba';
    return Scaffold(
      appBar: AppBar(title: Text(titleApp)),
      body: Center(
          child: Column(
        children: [Text(data), Text(data2)],
      )),
    );
  }
}
