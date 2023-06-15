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
        children: [
          Text(
            data,
            style: ProjectStyles.welcomeStyle,
          ),
          Text(data2)
        ],
      )),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
    wordSpacing: 2,
    decoration: TextDecoration.underline,
    fontStyle: FontStyle.normal,
    letterSpacing: 2,
    fontWeight: FontWeight.w600,
    fontSize: 20,
    color: Colors.lime,
  );
}
