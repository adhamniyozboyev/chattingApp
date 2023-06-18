import 'package:chatting_app1/screens/firstPage.dart';
import 'package:chatting_app1/screens/lastPage.dart';
import 'package:chatting_app1/screens/secondPage.dart';
import 'package:chatting_app1/screens/thirdPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    initialRoute: '/first',
    routes: {
      '/first': (context) => FirstPage(),
      '/second': (context) => SecondPage(),
      '/third': (context) => ThirdPage(),
      '/last': (context) => LastPage()
    },
  ));
}
