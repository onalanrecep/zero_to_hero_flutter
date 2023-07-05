import 'package:flutter/material.dart';

class ColorLearnView extends StatelessWidget {
  const ColorLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            color: ColorItems.sulu,
            child: const Text('Data'),
          ),
          Container(
            child: Text(
              'Data',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Theme.of(context).colorScheme.error),
            ),
          )
        ],
      ),
    );
  }
}

class ColorItems {
  static const Color porche = Color(0xffEDBF61);
  static const Color sulu = Color.fromRGBO(192, 237, 97, 1);
}
