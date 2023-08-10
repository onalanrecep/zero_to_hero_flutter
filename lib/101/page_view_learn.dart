import 'package:flutter/material.dart';
import 'package:zero_to_hero_flutter/101/card_learn.dart';
import 'package:zero_to_hero_flutter/101/list_tile_learn.dart';
import 'package:zero_to_hero_flutter/101/padding_learn.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController(viewportFraction: 0.9);
  int _currentPageIndex = 0;
  void _updatePageIndex(index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(_currentPageIndex.toString()),
            Spacer(),
            FloatingActionButton(
              onPressed: () {
                _pageController.previousPage(
                    duration: _DurationUtility._durationLow,
                    curve: Curves.slowMiddle);
              },
              child: const Icon(Icons.chevron_left),
            ),
            FloatingActionButton(
              onPressed: () {
                _pageController.nextPage(
                    duration: _DurationUtility._durationLow,
                    curve: Curves.slowMiddle);
              },
              child: const Icon(Icons.chevron_right),
            ),
          ],
        ),
      ),
      appBar: AppBar(title: const Text('Page View Learn')),
      body: PageView(
          padEnds: false,
          onPageChanged: _updatePageIndex,
          controller: _pageController,
          children: const [CardLearn(), ListTileLearn(), PaddingLearn()]),
    );
  }
}

class _DurationUtility {
  static const _durationLow = const Duration(seconds: 1);
}
