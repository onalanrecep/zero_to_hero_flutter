import 'package:flutter/material.dart';
import 'package:zero_to_hero_flutter/101/text_learn_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: TextLearnView());
  }
}
