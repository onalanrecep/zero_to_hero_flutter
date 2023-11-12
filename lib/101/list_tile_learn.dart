import 'package:flutter/material.dart';
import 'package:zero_to_hero_flutter/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});
  final baslik = "ListTileLearn";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(baslik)),
      body: Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: const RandomImage(),
                onTap: () {},
                subtitle: const Text("How do use your card"),
                leading: const Icon(Icons.money),
                trailing: const Icon(Icons.chevron_right_sharp),
              ),
            ),
          )
        ],
      ),
    );
  }
}
