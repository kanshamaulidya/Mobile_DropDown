import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<String> data = [
    "anton",
    "setiawan",
    "jodi",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropdown"),
      ),
      body: Center(
        child: DropdownButton(
            hint: Text("pilih"),
            onChanged: (value) {
              print(value);
            },
            items: data
                .map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    ))
                .toList()),
      ),
    );
  }
}
