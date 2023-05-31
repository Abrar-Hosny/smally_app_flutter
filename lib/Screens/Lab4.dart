import 'package:flutter/material.dart';
import 'package:flutterapp/Screens/welcomepage.dart';
import 'package:flutterapp/Screens/photos.dart';

class Lab4e extends StatelessWidget {
  const Lab4e({super.key});
  static const String id = "Lab4";

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 130,
            ),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/3.png'),
                  radius: 49,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 1.0,
                    width: 130.0,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Our Customer Service is\n  Avaliable 24 Hours",
                  style: TextStyle(fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.phone),
                      ),
                      Text(
                        "Call us in 111",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    onPressed: () {
                      Navigator.pushNamed(context, wwelcome.id);
                    },
                    child: Text("Go to home page")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
