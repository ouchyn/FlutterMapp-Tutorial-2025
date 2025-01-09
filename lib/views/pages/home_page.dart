import 'package:flutter/material.dart';
import 'package:fluttermaptuto2025/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          HeroWidget(title: 'hOME',)
        ],
      ),
    );
  }
}