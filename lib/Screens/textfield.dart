import 'package:flutter/material.dart';
import 'package:mob_revision/Screens/welcomepage.dart';

class textfieldd extends StatefulWidget {
  const textfieldd({super.key});
  static const String id = "textfieldd";

  @override
  State<textfieldd> createState() => _textfielddState();
}

bool passToggle = true;

class _textfielddState extends State<textfieldd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          // this scroll for yellow line
          SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Center(
            child: Container(
              child: Column(
                children: [
                  Container(
                    width: 270,
                    height: 50,
                    child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: "Enter Your Email ",
                          hintText: "example@gmail.com",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 15),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          prefixIcon: Icon(
                            Icons.email,
                            size: 25,
                          ),
                        )),
                  ),

                  const SizedBox(
                    height: 15,
                  ),
                  //password ---------------------------------------------------
                  Container(
                    width: 270,
                    height: 50,
                    child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        obscureText: passToggle,
                        decoration: InputDecoration(
                          labelText: "Enter Password",
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          prefixIcon: const Icon(
                            Icons.lock,
                            size: 25,
                          ),
                          suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                passToggle = !passToggle;
                              });
                            },
                            child: Icon(passToggle
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        onPressed: () {
                          Navigator.pushNamed(context, wwelcome.id);
                        },
                        child: Text("Go to home page")),
                  ),
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }
}
