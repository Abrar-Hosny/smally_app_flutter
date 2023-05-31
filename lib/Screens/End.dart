import 'package:flutter/material.dart';
import 'package:mob_revision/Screens/welcomepage.dart';

class end extends StatefulWidget {
  const end({super.key});
  static const String id = 'end';

  @override
  State<end> createState() => _endState();
}

class _endState extends State<end> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("  بالتوفيق لكم جميعا")),
            Center(
              child: Text(
                "Good Luck!",
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    Navigator.pushNamed(context, wwelcome.id);
                  },
                  child: Text("Go to home page")),
            ),
          ],
        ),
      ),
    );
  }
}
