import 'package:flutter/material.dart';

class MyCollectionsDemos extends StatefulWidget {
  const MyCollectionsDemos({super.key});

  @override
  State<MyCollectionsDemos> createState() => _MyCollectionsDemosState();
}

class _MyCollectionsDemosState extends State<MyCollectionsDemos> {
  late final List<CollectionModel> _items;
  @override
  void initState() {
    super.initState();
    _items = [
      CollectionModel(
          imagePath: 'assets/png/image_collection.png',
          title: 'Abstract Art 1',
          price: 3.4),
      CollectionModel(
          imagePath: 'assets/png/image_collection.png',
          title: 'Abstract Art 2',
          price: 3.4),
      CollectionModel(
          imagePath: 'assets/png/image_collection.png',
          title: 'Abstract Art 3',
          price: 3.4),
      CollectionModel(
          imagePath: 'assets/png/image_collection.png',
          title: 'Abstract Art 4',
          price: 3.4),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Collections Demos'),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          itemCount: _items.length,
          itemBuilder: (context, index) {
            return CategoryCard(model: _items[index]);
          }),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required CollectionModel model,
  }) : _model = model;

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      child: SizedBox(
        height: 300,
        child: Column(children: [
          Expanded(child: Image.asset(_model.imagePath)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(_model.title),
              Text('${_model.price} eth'),
            ],
          )
        ]),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel(
      {required this.imagePath, required this.title, required this.price});
}
