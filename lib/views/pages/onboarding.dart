import 'package:flutter/material.dart';
import 'package:fluttermaptuto2025/views/pages/login_page.dart';
import 'package:lottie/lottie.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Lottie.asset('assets/lotties/car.json'),
                SizedBox(
                  height: 20,
                ),
                Text('This is cool'),
                SizedBox(
                  height: 20,
                ),
                FilledButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(title: title),
                      ),
                    );
                  },
                  style: FilledButton.styleFrom(
                      minimumSize: Size(double.infinity, 40)),
                  child: Text('Next'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
