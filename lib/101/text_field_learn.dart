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
      body: TextField(
        buildCounter: (BuildContext context,
            {int? currentLength, bool? isFocused, int? maxLength}) {
          return _animatedContainer(currentLength);
        },
        keyboardType: TextInputType.emailAddress,
        autofillHints: const [AutofillHints.email],
        decoration: const InputDecoration(
            prefix: Icon(Icons.mail),
            border: OutlineInputBorder(),
            labelText: 'Mail'),
        maxLength: 20,
      ),
    );
  }
}

AnimatedContainer _animatedContainer(int? currentLength) {
  return AnimatedContainer(
    duration: const Duration(seconds: 1),
    height: 10,
    width: 10.0 * (currentLength ?? 0),
    color: Colors.green,
  );
}
