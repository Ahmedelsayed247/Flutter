import 'package:flutter/material.dart';

import '../widget/widget.dart';

class Start_Page extends StatefulWidget {
  const Start_Page({Key? key}) : super(key: key);

  @override
  State<Start_Page> createState() => _Start_PageState();
}

class _Start_PageState extends State<Start_Page> {
  void SelectScren(String Pagename) {
    if (Pagename == "Student") {
      Navigator.of(context).pushNamed(
        "student",
      );
    } else {
      Navigator.of(context).pushNamed("Doctor");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Container(
        child: Column(children: [
          Row(
            children: [
              Container(
                height: 500,
                width: MediaQuery.of(context).size.width,
                child: Image.asset("assets/images/4.png"),
              )
            ],
          ),

          // SizedBox(height: 20, ),
          Row(
            children: [
              CustomizedButton(
                buttonText: "Student",
                textColor: Colors.white,
                buttonColor: Colors.black,
                onPressed: () {
                  SelectScren("Student");
                },
              ),
            ],
          ),
          Row(
            children: [
              CustomizedButton(
                buttonText: "Doctor",
                textColor: Colors.black,
                buttonColor: Colors.white,
                onPressed: () {
                  SelectScren("Doctor");
                },
              ),
            ],
          )
        ]),
      ),
    );
  }
}
