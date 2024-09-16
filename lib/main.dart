import 'package:flutter/material.dart';
import 'cardTemplate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "Assignment 1",
            style: TextStyle(fontSize: 20),
          ),
          leading: const Icon(
            Icons.menu_sharp,
            color: Colors.black,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              color: Colors.black,
            )
          ],
        ),
        body: MyListView(),
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 14.0),
        children: const [
          CardTemplate(
            backgroundColor: Colors.cyan,
          ),
          SizedBox(height: 16),
          CardTemplate(
            backgroundColor: Colors.teal,
          ),
          SizedBox(height: 16),
          CardTemplate(
            backgroundColor: Colors.red,
          ),
          SizedBox(height: 16),
          CardTemplate(
            backgroundColor: Colors.lightGreen,
          ),
          SizedBox(height: 16),
          CardTemplate(
            backgroundColor: Colors.blueAccent,
          ),
          SizedBox(height: 16),
          CardTemplate(
            backgroundColor: Colors.redAccent,
          ),
          SizedBox(height: 16),
          CardTemplate(
            backgroundColor: Colors.blueGrey,
          ),
          SizedBox(height: 16),
          CardTemplate(
            backgroundColor: Colors.orange,
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
