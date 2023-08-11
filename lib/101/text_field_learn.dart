import 'package:flutter/material.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Field Learn'),
      ),
      body: const TextField(
        decoration: InputDecoration(
            prefix: Icon(Icons.mail),
            border: OutlineInputBorder(),
            labelText: 'Mail'),
        maxLength: 20,
      ),
    );
  }
}
