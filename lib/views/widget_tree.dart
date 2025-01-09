import 'package:flutter/material.dart';
import 'package:fluttermaptuto2025/data/notifiers.dart';
import 'package:fluttermaptuto2025/views/pages/home_page.dart';
import 'package:fluttermaptuto2025/views/pages/profile_page.dart';
import 'package:fluttermaptuto2025/views/pages/settings_page.dart';
import 'package:fluttermaptuto2025/views/widgets/navbar_widget.dart';

List<Widget> pages = [
  HomePage(),
  ProfilePage(),
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Map Tutorial 2025'),
        actions: [
          IconButton(
            onPressed: () {
              isDarkModeNotifier.value = !isDarkModeNotifier.value;
            },
            icon: ValueListenableBuilder(valueListenable: isDarkModeNotifier, builder: (context, isDarkMode, child) {
              return Icon(
                isDarkMode ?
                Icons.light_mode : Icons.dark_mode
              );
            },)
          ),
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SettingsPage(title: 'Settings',);
            },));
          }, icon: Icon(Icons.settings))
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}