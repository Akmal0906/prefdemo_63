import 'package:flutter/material.dart';
import 'package:prefdemo_63/pages/home_page.dart';
import 'package:prefdemo_63/pages/login_page.dart';
import 'package:prefdemo_63/pages/page_one.dart';
import 'package:prefdemo_63/pages/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),

      routes: {
        SignUpPage.id:(context)=> const SignUpPage(),
        LoginPage.id:(context)=>const LoginPage(),
        PageOne.id:(context)=>const PageOne(),
        HomePage.id:(context)=>const HomePage()
      },
    );
  }
}

