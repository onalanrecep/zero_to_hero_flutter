import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 300,
            height: 200,
            child: Text('a' * 500),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text('bb' * 50),
          ),
          Container(
              width: 50,
              constraints: const BoxConstraints(
                  maxWidth: 200, minWidth: 100, minHeight: 50, maxHeight: 200),
              child: Text(
                'aa' * 100,
                maxLines: 2,
              ),
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: ProjectUtility.boxDecoration)
        ],
      ),
    );
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
      //color: Colors.red,
      borderRadius: BorderRadius.circular(10),
      gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
      boxShadow: const [
        BoxShadow(color: Colors.green, offset: Offset(0.1, 1), blurRadius: 12)
      ],
      //shape: BoxShape.circle),
      border: Border.all(width: 10, color: Colors.white12));
}