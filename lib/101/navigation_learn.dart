import 'package:flutter/material.dart';
//import 'package:zero_to_hero_flutter/101/icon_learn.dart';
import 'package:zero_to_hero_flutter/101/navigate_detail_learn.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn>
    with NavigatorManager {
  List<int> selecetedItems = [];
  void addSelected(int index, bool isAdd) {
    setState(() {
      isAdd ? selecetedItems.add(index) : selecetedItems.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Learn'),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return TextButton(
          onPressed: () async {
            final response = await navigateToWidgetNormal<bool>(context,
                NavigateDetailLearn(isOkey: selecetedItems.contains(index)));
            if (response is bool) {
              addSelected(index, response);
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Placeholder(
              color: selecetedItems.contains(index) ? Colors.green : Colors.red,
            ),
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigation_rounded),
        onPressed: () {},
      ),
    );
  }
}

mixin NavigatorManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: true,
        settings: const RouteSettings(),
      ),
    );
  }

  Future<T?> navigateToWidgetNormal<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(
      MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: true,
        settings: const RouteSettings(),
      ),
    );
  }
}
