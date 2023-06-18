import 'package:chatting_app1/screens/secondPage.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirsPageState();
}

class _FirsPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Text(
          'Get Closer To \n Everyone',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 60),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50, top: 25, bottom: 0),
          child: Text('Helps you to contact everyone with\n just easy way',style: TextStyle(fontSize: 20),),
        ),
        Padding(
          padding: const EdgeInsets.only(top:40,bottom: 40),
          child: Image.asset(
            'images/best.png',
            scale: 4,
          ),
        ),
        
        Center(
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(300, 50), backgroundColor: Colors.purple),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondPage(),
                    ));
              },
              child: Text('Get Started')),
        )
      ]),
    );
  }
}
