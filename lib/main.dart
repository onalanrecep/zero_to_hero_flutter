import 'package:flutter/material.dart';
import 'package:zero_to_hero_flutter/101/container_sized_box_learn.dart';

import '101/scaffold_learn.dart';
//import 'package:zero_to_hero_flutter/101/text_learn_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FlutterDemo',
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: const ScaffoldLearnView());
  }
}
