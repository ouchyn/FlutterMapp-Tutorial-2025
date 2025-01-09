import 'package:flutter/material.dart';
import 'package:fluttermaptuto2025/views/widget_tree.dart';
import 'package:fluttermaptuto2025/views/widgets/hero_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});
  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerEmail = TextEditingController(text: '123');
  TextEditingController controllerPW = TextEditingController(text: '456');
  String confirmedEmail = '123';
  String confirmedPW = '456';

  @override
  void dispose() {
    controllerEmail.dispose();
    controllerPW.dispose();
    super.dispose();
  }

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
                HeroWidget(
                  title: widget.title,
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  controller: controllerEmail,
                  onEditingComplete: () {
                    setState(() {});
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  controller: controllerPW,
                  onEditingComplete: () {
                    setState(() {});
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                FilledButton(
                  onPressed: () {
                    onLoginPressed();
                  },
                  style: FilledButton.styleFrom(
                      minimumSize: Size(double.infinity, 40)),
                  child: Text('Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  void onLoginPressed() {
    if (confirmedEmail == controllerEmail.text && confirmedPW == controllerPW.text) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return WidgetTree();
      },));
    }
  }
}
