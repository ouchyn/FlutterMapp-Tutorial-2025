import 'package:flutter/material.dart';
import 'package:fluttermaptuto2025/data/constants.dart';
import 'package:fluttermaptuto2025/views/widgets/container_widget.dart';
import 'package:fluttermaptuto2025/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  

  @override
  Widget build(BuildContext context) {
    final List<String> list = [
      KValue.keyConcepts,
      KValue.basicLayout,
      KValue.cleanUI,
      KValue.fixBug,
    ];
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            HeroWidget(
              title: 'hOME',
            ),
            Column(
              children: List.generate(
                list.length,
                (index) {
                  return ContainerWidget(
                    title: list.elementAt(index),
                    description: 'Description sounds cool',
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
