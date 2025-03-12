import 'package:flutter/material.dart';
import 'package:untitled1/util/todo_title.dart';

import '../materl/text.dart';

class TheApp extends StatefulWidget {
  const TheApp({super.key});

  @override
  State<TheApp> createState() => _TheAppState();
}

class _TheAppState extends State<TheApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Your list",
          style: textType(Colors.white70, 30, FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
        actions: [
          IconButton(
              icon: Icon(Icons.add, size: 30, color: Colors.black45),
              onPressed: () {})
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add,size: 30),
        backgroundColor: Colors.orange,

      ),
      backgroundColor: Colors.orangeAccent,
      body: ListView(
        children: [TodoTitle(),TodoTitle(),TodoTitle()],
      ),
    );
  }
}
