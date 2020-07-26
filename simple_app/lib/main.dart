import 'package:flutter/material.dart';
import 'package:simple_app/footer.dart';
import 'package:simple_app/header.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: Header(),
        body: Center(child: Text("hello hello")),
        bottomNavigationBar: Footer()
      ),
    );
  }
}
