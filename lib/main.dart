import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:zero_to_hero_flutter/101/statefull_life_cycle_learn.dart';
import 'package:zero_to_hero_flutter/101/text_field_learn.dart';
//import 'package:zero_to_hero_flutter/101/column_row_learn.dart';
//import 'package:zero_to_hero_flutter/101/stateful_learn.dart';

//import '101/page_view_learn.dart';
//import 'package:zero_to_hero_flutter/101/custom_widget_learn.dart';
//import 'package:zero_to_hero_flutter/101/indicator_learn.dart';
//import 'package:zero_to_hero_flutter/101/list_tile_learn.dart';
//import 'package:zero_to_hero_flutter/101/card_learn.dart';
//import 'package:zero_to_hero_flutter/demos/note_demos_view.dart';
//import 'package:zero_to_hero_flutter/101/padding_learn.dart';
//import 'package:zero_to_hero_flutter/101/color_learn.dart';
//import 'package:zero_to_hero_flutter/101/stateless_learn.dart';
//import 'package:zero_to_hero_flutter/101/app_bar_learn.dart';
//import 'package:zero_to_hero_flutter/101/button_learn.dart';
//import 'package:zero_to_hero_flutter/101/icon_learn.dart';
//import 'package:zero_to_hero_flutter/101/container_sized_box_learn.dart';
//import '101/scaffold_learn.dart';
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
        theme: ThemeData.dark().copyWith(
            progressIndicatorTheme: const ProgressIndicatorThemeData(
              color: Colors.white,
            ),
            appBarTheme: const AppBarTheme(
              centerTitle: true,
              backgroundColor: Colors.black12,
              elevation: 3,
              systemOverlayStyle: SystemUiOverlayStyle.light,
            )),
        debugShowCheckedModeBanner: false,
        home: const TextFieldLearn());
  }
}
