import 'package:flutter/material.dart';

import '../materl/text.dart';

class todolist extends StatefulWidget {
  const todolist({super.key});

  @override
  State<todolist> createState() => _todolistState();
}

class _todolistState extends State<todolist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your list",style: textType(Colors.white70, 30, FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.orange,
        actions: [
          IconButton(icon: Icon(Icons.add,size: 30,color: Colors.black45),onPressed: (){

          })
        ],
      ),
      backgroundColor: Colors.orangeAccent,




    );
  }
}
