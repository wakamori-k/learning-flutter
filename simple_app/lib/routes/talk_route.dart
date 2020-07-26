import 'package:flutter/material.dart';

class Talk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("トーク")
        ),
        body: Center(child: Text("トーク"))
    );
  }
}