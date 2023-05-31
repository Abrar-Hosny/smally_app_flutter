import 'package:flutter/material.dart';
import 'package:mob_revision/Screens/welcomepage.dart';

class sound extends StatefulWidget {
  const sound({super.key});

  static const String id = 'sound';

  @override
  State<sound> createState() => _soundState();
}

bool click = false;

class _soundState extends State<sound> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 200, 232, 247),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 200, top: 20),
            child: Icon(Icons.share),
          ),
          Padding(
            padding: const EdgeInsets.all(50),
            child: Image.asset("assets/2.PNG"),
          ),
          Text("We almost finish our second year",
              style: TextStyle(fontSize: 20)),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40))),
                onPressed: () {
                  setState(() {
                    click = !click;
                  });
                },
                child: Icon((click == true) ? Icons.play_arrow : Icons.pause)),
          ),
          Center(
            child: Text(
              "Click on the button above ",
              style: TextStyle(fontSize: 15),
            ),
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
      ),
    );
  }
}
