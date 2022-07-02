import 'package:flutter/material.dart';
import 'package:prefdemo_63/serviecs/pref_sevice.dart';
class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);
static const String id='page_one';
  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
 _showInfo(){
    Pref.loadUser().then((user) async => {
      print(user!.email),
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page one'),
      ),
      body: Center(
        child: _showInfo()
      ),
    );
  }
}
