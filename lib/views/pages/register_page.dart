import 'package:flutter/material.dart';
import 'package:fluttermaptuto2025/views/widgets/hero_widget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            HeroWidget(title: 'Register Page',),

          ],
        ),
      ),
    );
  }
}