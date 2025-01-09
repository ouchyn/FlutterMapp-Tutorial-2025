import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key, required this.title});

  final String title;

  @override
  State<SettingsPage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<SettingsPage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 20.0;
  String? menuItem = 'e1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        automaticallyImplyLeading: false,
        leading: BackButton(
          onPressed: () {
            return Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              DropdownButton(
                  value: menuItem,
                  items: [
                    DropdownMenuItem(
                      value: 'e1',
                      child: Text('Element 1'),
                    ),
                    DropdownMenuItem(
                      value: 'e2',
                      child: Text('Element 2'),
                    ),
                    DropdownMenuItem(
                      value: 'e3',
                      child: Text('Element 3'),
                    ),
                    DropdownMenuItem(
                      value: 'e4',
                      child: Text('Element 4'),
                    ),
                  ],
                  onChanged: (String? value) {
                    setState(() {
                      menuItem = value;
                    });
                  }),
              TextField(
                decoration: InputDecoration(border: OutlineInputBorder()),
                controller: controller,
                onEditingComplete: () {
                  setState(() {});
                },
              ),
              Text(controller.text),
              Checkbox(
                tristate: true,
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
              CheckboxListTile(
                tristate: true,
                title: Text('Click me'),
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
              Switch.adaptive(
                value: isSwitched,
                onChanged: (bool value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              SwitchListTile(
                title: Text('Click me'),
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              Slider.adaptive(
                min: 20,
                max: 100,
                divisions: 80,
                value: sliderValue,
                onChanged: (value) {
                  setState(() {
                    sliderValue = value;
                    print(sliderValue);
                  });
                },
              ),
              InkWell(
                splashColor: Colors.teal,
                onTap: () {
                  print('Image Clicked');
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.white12,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    foregroundColor: Colors.white),
                onPressed: () {},
                child: Text('Click me'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Click me'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Click me'),
              ),
              FilledButton(
                onPressed: () {},
                child: Text('Click me'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text('Click me'),
              ),
              CloseButton(),
              BackButton(),
            ],
          ),
        ),
      ),
    );
  }
}
