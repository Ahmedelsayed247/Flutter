import 'package:flutter/material.dart';

class After_sign_in_as_doctor extends StatefulWidget {
  const After_sign_in_as_doctor({super.key});

  @override
  State<After_sign_in_as_doctor> createState() => _After_sign_in_as_doctor();
}

class _After_sign_in_as_doctor extends State<After_sign_in_as_doctor> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Hello Doctor"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text("Doctor"),
      ),
    ));
  }
}
