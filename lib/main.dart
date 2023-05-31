import 'package:flutter/material.dart';
import 'package:mob_revision/Screens/Buttons.dart';
import 'package:mob_revision/Screens/End.dart';
import 'package:mob_revision/Screens/Lab4.dart';
import 'package:mob_revision/Screens/photos.dart';
import 'package:mob_revision/Screens/soundpage.dart';
import 'package:mob_revision/Screens/textfield.dart';
import 'package:mob_revision/Screens/profile.dart';
import 'package:mob_revision/Screens/welcomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: wwelcome.id,
        routes: {
          photos.id: (context) => photos(),
          Lab4e.id: (context) => Lab4e(),
          wwelcome.id: (context) => wwelcome(),
          sound.id: (context) => sound(),
          profile.id: (context) => profile(),
          end.id: (context) => end(),
          butons.id: (context) => butons(),
          textfieldd.id: (context) => textfieldd()
        });
  }
}
