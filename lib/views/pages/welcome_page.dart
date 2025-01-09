import 'package:flutter/material.dart';
import 'package:fluttermaptuto2025/views/pages/login_page.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset('assets/lotties/car.json'),
                FittedBox(
                  child: Text(
                    'Flutter Mapp Tutorial',
                    style: TextStyle(
                      fontSize: 500,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                FilledButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return LoginPage(title: 'Login Page',);
                      },
                    ));
                  },
                  style: FilledButton.styleFrom(
                    minimumSize: Size(double.infinity, 40)
                  ),
                  child: Text('Login'),
                ),
                SizedBox(height: 20,),
                FilledButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return LoginPage(title: 'Register Page',);
                      },
                    ));
                  },
                  style: FilledButton.styleFrom(
                    minimumSize: Size(double.infinity, 40)
                  ),
                  child: Text('Get Started'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
