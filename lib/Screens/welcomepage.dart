import 'package:flutter/material.dart';
import 'package:mob_revision/Screens/Buttons.dart';
import 'package:mob_revision/Screens/End.dart';
import 'package:mob_revision/Screens/Lab4.dart';
import 'package:mob_revision/Screens/photos.dart';
import 'package:mob_revision/Screens/soundpage.dart';
import 'package:mob_revision/Screens/textfield.dart';
import 'package:mob_revision/Screens/profile.dart';

class wwelcome extends StatelessWidget {
  const wwelcome({super.key});
  static const String id = "wwelcome";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          "WELCOME ",
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, photos.id);
              },
              icon: Icon(Icons.home))
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, butons.id);
                  },
                  child: Text("Go to Buttons Page")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Lab4e.id);
                  },
                  child: Text("Go to Lab4 Example page")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, photos.id);
                  },
                  child: Text("Go to Photos page")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, sound.id);
                  },
                  child: Text("Go to Sound  page")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, profile.id);
                  },
                  child: Text("Go to profile page")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, textfieldd.id);
                  },
                  child: Text("Go to text field page")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, end.id);
                  },
                  child: Text("Go to End page")),
            ),
          ],
        ),
      ),
    );
  }
}
