import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    String baslik = 'Flutter\'da Metinler';
    String icerik = 'Metinleri güzel öğren';
    String titleApp = 'TextLearnView';
    return Scaffold(
      appBar: AppBar(title: Text(titleApp)),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            baslik,
            style: ProjectStyles.welcomeStyle,
          ),
          Text(
            icerik * 10,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: ProjectStyles.icerikStyle,
          )
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
    color: Colors.black87,
  );
  static TextStyle icerikStyle = const TextStyle(
    color: Colors.black,
    fontSize: 14,
  );
}
