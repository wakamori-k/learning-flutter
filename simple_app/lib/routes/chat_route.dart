import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  String username;

  Chat({String username}) {
    this.username = username;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.username ?? ''),
        actions: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: IconButton(
              icon: Icon(Icons.search),
              onPressed: () => {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all((4.0)),
            child: IconButton(
              icon: Icon(Icons.call),
              onPressed: () => {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: IconButton(
              icon: Icon(Icons.dehaze),
              onPressed: () => {},
            ),
          )
        ],
      ),
      body: Center(child: Text("Chat"),),
      backgroundColor: Colors.cyan,
    );
  }
}