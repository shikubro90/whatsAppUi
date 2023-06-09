import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  static const String id = 'second_page';
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second page"),
      ),
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(child: Text("Go To Home page"),onTap: (){
                  Navigator.pop(context);
                },)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
