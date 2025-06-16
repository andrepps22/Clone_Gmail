import 'package:flutter/material.dart';
import 'package:gmail/components/emailslist.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Gmail",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          elevation: 1,
          backgroundColor: Colors.red,
        ),
        body: Gmail(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.edit_outlined, size: 25),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.mail), label: "Email"),

            BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt),
              label: "Meet",
            ),
          ],
          iconSize: 30,
        ),
      ),
    );
  }
}
