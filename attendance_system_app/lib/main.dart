import 'package:attendance_system_app/screens/After_Sign_in%20_as%20_student.dart';
import 'package:attendance_system_app/screens/After_sign_in_as_doctor.dart';
import 'package:attendance_system_app/screens/sign_in_Doctor_page.dart';
import 'package:attendance_system_app/screens/sign_in_Student_page.dart';
import 'package:attendance_system_app/screens/start_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const Start_Page(),
        'student': (context) => Sign_In_Student(),
        'Doctor': (context) => Sign_In_Doctor(),
        "After_sign_in_as_Doctor": (context) => After_sign_in_as_doctor(),
        "After_sign_in_as_Student": (context) => After_Sign_in_as_student(),
      },
      debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      theme: ThemeData(

          // primarySwatch: Colors.teal,
          ),
    );
  }
}
