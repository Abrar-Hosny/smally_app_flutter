import 'package:flutter/material.dart';
import 'package:flutterapp/Screens/photos.dart';
import 'package:flutterapp/Screens/welcomepage.dart';

class butons extends StatelessWidget {
  const butons({super.key});
  static const String id = 'butons';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Text("This is a Elevated Button",
                    style: TextStyle(fontSize: 20))),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, wwelcome.id);
                },
                child: Text("Go to home page")),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Center(
                child: Text(
              "This is a Text Button",
              style: TextStyle(fontSize: 20),
            )),
          ),
          Center(
            child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, photos.id);
                },
                child: Text("Go to photo page")),
          ),
        ],
      )),
    );
  }
}
