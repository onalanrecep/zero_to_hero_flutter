import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({super.key, this.userName});
  final String? userName;
  final ProjectKeys keys = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    //const String userName = 'Reko';
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
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            userName ?? 'Kullanıcı Tanımsız',
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: ProjectColors.projeRenk),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(keys.welcome),
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
      color: Colors.amber);
  static TextStyle icerikStyle = const TextStyle(
    color: Colors.green,
    fontSize: 14,
  );
}

class ProjectColors {
  static Color projeRenk = Colors.yellowAccent;
}

class ProjectKeys {
  String welcome = 'Hello';
}
