import 'package:flutter/material.dart';
import 'package:mob_revision/Screens/welcomepage.dart';

class photos extends StatelessWidget {
  const photos({super.key});
  static const String id = "Photos";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          // خلفية صورة

          body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/1.jpg"), fit: BoxFit.fill)),
        child: Column(children: [
          //this is a buttton inside it text called Elvated Buttons

          // صورة عادية assest image
          Container(
            child: Image.asset("assets/2.PNG"),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {
                  Navigator.pushNamed(context, wwelcome.id);
                },
                child: Text("Go to home page")),
          ),
        ]),
      )),
    );
  }
}
