import 'package:flutter/material.dart';
import 'package:mob_revision/Screens/End.dart';
import 'package:mob_revision/Screens/welcomepage.dart';

class profile extends StatefulWidget {
  const profile({super.key});
  static const String id = 'profile';

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/3.png'),
              radius: 49,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, end.id);
                  },
                  child: Text("Go To End page")),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, wwelcome.id);
                },
                child: Text("Go To home page")),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.person_outline_outlined),
                  Text("First Name")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.person_outline_outlined),
                  Text("Last Name")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [Icon(Icons.email), Text("Email")],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [Icon(Icons.facebook_rounded), Text("Facebook")],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [Icon(Icons.telegram), Text("Telegram")],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
