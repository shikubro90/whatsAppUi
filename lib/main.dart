import 'package:flutter/material.dart';
import 'package:whatsupui/home_screen.dart';
import 'package:whatsupui/second_page.dart';
import 'package:whatsupui/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id : (context) => HomeScreen(),
        SecondPage.id : (context) => SecondPage(),
        SettingPage.id : (context) => SettingPage()
      },
    );
  }
}




