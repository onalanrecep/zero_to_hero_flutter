import 'package:flutter/material.dart';

class StatlessLearn extends StatelessWidget {
  const StatlessLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(children: [
        TitleTextWidget(text: "Reko"),
        TitleTextWidget(text: "Nuro")
      ]),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineLarge,
    );
  }
}
