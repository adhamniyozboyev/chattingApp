import 'package:chatting_app1/screens/thirdPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();
    return Scaffold(
      body: Form(
        key: formKey,
        child: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_circle_left_outlined,
                    size: 30,
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 29.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Hello, Welcome Back',
                      style: TextStyle(fontSize: 28),
                    ),
                    Text(
                        'Happy to see you again, to use your\n account please login first.')
                  ],
                ),
                Container(
                    height: 300,
                    width: 100,
                    child: Image.asset(
                      'images/sitting.png',
                      scale: 2,
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              validator: (value) {
                int a = value.toString().indexOf("@gmail.com");

                if (value.toString().length != a + 10) {
                  return "not found!";
                }
                if (value == null ||
                    value.isEmpty ||
                    !value.contains('@gmail.com')) {
                  return 'Enter your email!';
                } else
                  return null;
              },
              decoration: InputDecoration(
                  labelText: 'Email Adress',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 40.0, bottom: 40, left: 15, right: 15),
            child: TextFormField(
              inputFormatters: [FilteringTextInputFormatter.allow(RegExp('[0-9 , a-z]'))],
              validator: (value) {
                if (value == null || value.isEmpty||value.length<8) {
                  return 'Enter correct password';
                } else
                  return null;
              },
              decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14))),
            ),
          ),
          Center(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(300, 50), backgroundColor: Colors.purple),
                onPressed: () {
                  formKey.currentState!.validate();
                  if (formKey.currentState!.validate()) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ThirdPage(),
                        ));
                  }
                },
                child: Text('Login')),
          )
        ]),
      ),
    );
  }
}
