import 'package:flutter/material.dart';

class Sign_In_Doctor extends StatefulWidget {
  @override
  _Sign_In_DoctorState createState() => _Sign_In_DoctorState();
}

class _Sign_In_DoctorState extends State<Sign_In_Doctor> {
  final GlobalKey<FormState> _studentKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          title: const Text('Doctor Login'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        ),
        body: SingleChildScrollView(
          child: Container(
            // padding: EdgeInsets.all(15),
            child: Column(children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(15),
                color: Colors.white,
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width / .2,
                  child: Row(
                    children: [
                      Image(image: AssetImage("assets/images/loginDoctor.png"))
                      ,Text("Doctor login")
                    ],
                  )
                  //padding: EdgeInsets.symmetric(horizontal:20 ),
                  // margin: const EdgeInsets.symmetric(horizontal: 20),

                  ),
              const MyStatefulWidget(),
            ]),
          ),
        ));
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
              child: TextFormField(
                controller: email,
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                  labelText: "ID",
                  hintText: 'Enter your ID',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your ID';
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
              child: TextFormField(
                controller: password,
                obscureText: true,
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.password,
                    color: Colors.blue,
                  ),
                  labelText: "password",
                  hintText: 'Enter your password',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the password';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: SizedBox(
                  width: 170,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                      ),
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                    ),
                    // height: ,
                    // width: MediaQuery.of(context).size.width-20,
                    //icon: Icons.email,
                    onPressed: () {},
                    child: const Text(
                      'Login ',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
