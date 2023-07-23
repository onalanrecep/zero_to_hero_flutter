import 'package:flutter/material.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({super.key});
  final _titleNote = "Create Your Firt Note";
  final _buttonText = "Create a Note";
  final _textButtonText = "Import Notes";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(title: const Text("Note Demo App")),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            Image.network(
              "https://cdn03.ciceksepeti.com/cicek/kcm30228480-1/L/to-do-list-bear-not-defteri-kcm30228480-1-c21a8cc0124646e088a394e8d7f58379.jpg",
              width: double.infinity,
            ),
            _TitleWidget(titleNote: _titleNote),
            const Padding(
              padding: PaddingItems.verticalPadding,
              child: _SubTitleWidget(),
            ),
            const Spacer(),
            ElevatedButton(
                onPressed: () {},
                child: SizedBox(
                    height: ButtonHeights.buttonNormalHeight,
                    child: Center(
                        child: Text(
                      _buttonText,
                      style: Theme.of(context).textTheme.headlineMedium,
                    )))),
            TextButton(onPressed: () {}, child: Text(_textButtonText)),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}

class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Add a note" * 8,
      style: Theme.of(context)
          .textTheme
          .titleMedium
          ?.copyWith(color: Colors.black),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    super.key,
    required this.titleNote,
  });

  final String titleNote;

  @override
  Widget build(BuildContext context) {
    return Text(
      titleNote,
      style: Theme.of(context)
          .textTheme
          .headlineSmall
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w800),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 40);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);
}

class ButtonHeights {
  static const double buttonNormalHeight = 50;
}
