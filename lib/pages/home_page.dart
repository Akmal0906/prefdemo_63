import 'package:flutter/material.dart';

import '../model/user_model.dart';
import '../serviecs/pref_sevice.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id='home_page';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  void _doLogIn() async{
    String email=emailController.text.toString().trim();
    String password=passwordController.text.toString().trim();

    User user=User.from(email: email, password: password,id: 777);
    Pref.storeUser(user);
  // print(email);
    Pref.loadUser().then((user) =>  {
      print(user!.email),
      print(user.password),
    } );
//Navigator.pushReplacementNamed(context,PageOne.id);


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15,right: 15),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey[200]
              ),
              child:  TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(Icons.email),
                  hintText: 'Email',

                ),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              padding: const EdgeInsets.only(left: 15,right: 15),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey[200]
              ),
              child:  TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(Icons.lock,color: Colors.deepPurple,),

                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.deepPurpleAccent),
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              height: 40,
              width: double.infinity,
              child:  ElevatedButton(

                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    onPrimary: Colors.white
                ),
                onPressed:_doLogIn,
                child: const Text('button'),
              ),
            )
          ],
        ),
      ),
    );
  }



}