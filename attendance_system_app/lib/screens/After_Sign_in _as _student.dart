import 'package:flutter/material.dart';

class After_Sign_in_as_student extends StatefulWidget {
  const After_Sign_in_as_student({super.key});

  @override
  State<After_Sign_in_as_student> createState() => _After_Sign_in_as_student();
}

class _After_Sign_in_as_student extends State<After_Sign_in_as_student> {
  @override
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Hello Student"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text("Student"),
      ),
    ));
  }
}
