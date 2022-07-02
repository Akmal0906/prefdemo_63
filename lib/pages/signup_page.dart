import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prefdemo_63/pages/login_page.dart';
class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);
static const String id='signup_page';
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
backgroundColor: Colors.grey.shade300,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "Let's Get Started!",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Create an  account to Q Allure to get all features',
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              //#email

              Container(
                height: 60,
                width: double.infinity,
                padding: const EdgeInsets.only(left: 20,top: 3),
                margin: const EdgeInsets.symmetric(horizontal: 40),

                decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      width: 1,
                      color: Colors.blue,
                    )),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Person',
                    icon: Icon(Icons.person),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 60,
                width: double.infinity,
                padding: const EdgeInsets.only(left: 20,top: 3),
                margin: const EdgeInsets.symmetric(horizontal: 40),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      width: 1,
                      color: Colors.blue,
                    )),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'email',
                    hintStyle: TextStyle(fontSize: 17),
                    icon: Icon(Icons.email),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 60,
                width: double.infinity,
                  padding: const EdgeInsets.only(left: 20,top: 3),
                margin: const EdgeInsets.symmetric(horizontal: 40),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      width: 1,
                      color: Colors.blue,
                    )),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Phone',
                    icon: Icon(Icons.phone),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),

              //#Password
              Container(
                height: 60,
                width: double.infinity,
                padding: const EdgeInsets.only(left: 20,top: 3),
                margin: const EdgeInsets.symmetric(horizontal: 40),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      width: 1,
                      color: Colors.blue,
                    )),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    icon: Icon(Icons.lock),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 60,
                width: double.infinity,
                padding: const EdgeInsets.only(left: 20,top: 3),
                margin: const EdgeInsets.symmetric(horizontal: 40),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      width: 1,
                      color: Colors.blue,
                    )),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    icon: Icon(Icons.lock),
                    border: InputBorder.none,
                  ),
                ),
              ),

              const SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 100),
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(25),
                  color: Colors.blue,
                ),
                child: const Center(
                  child: Text(
                    'CREATE',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Do not have account ?',
                    style: TextStyle(color: Colors.grey, fontSize: 17),
                  ),
                  GestureDetector(
                    child: const Text(
                      'Log In',
                      style: TextStyle(color: Colors.blue),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, LoginPage.id);
                    },
                  )
                ],
              )

            ],
          ),
        ));
  }
}
