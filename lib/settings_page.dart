import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  static const String id = 'settings_page';
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Container(
               margin: EdgeInsets.only(left: 0, right: 0, bottom: 20, top: 0),
               child: Text(
                "MaterialPageRoute Navigation",
                style: TextStyle(),
            ),
             ),
            Center(
              child: ElevatedButton(
                  onPressed: () => {Navigator.pop(context)},
                  child: Text("Go Back")),
            ),
            Container(
              margin: EdgeInsets.only(left: 0, right: 0, bottom: 20, top: 0),
              child: Text(
                "MaterialPageRoute Navigation",
                style: TextStyle(),
              ),
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () => {Navigator.pop(context)},
                  child: Text("Go Back")),
            ),
          ],
        ),
      ),
    );
  }
}
