import 'package:flutter/material.dart';
import 'package:untitled1/util/dialog_box.dart';
import 'package:untitled1/util/todo_title.dart';

import '../materl/text.dart';

class TheApp extends StatefulWidget {
  const TheApp({super.key});

  @override
  State<TheApp> createState() => _TheAppState();
}

class _TheAppState extends State<TheApp> {
  List<String> items = List.generate(5, (index) => 'Item ${index + 1}');

  @override
  //text Controller
  final _controller = TextEditingController();

  void crateNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return dialogbox(controller: _controller);
        });
  }
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
              icon: Icon(Icons.add, size: 30, color: Colors.yellow),
              onPressed: crateNewTask)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: crateNewTask
        ,
        child: Icon(Icons.add,size: 30),
        backgroundColor: Colors.yellowAccent,

      ),
      backgroundColor: Colors.orangeAccent,
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          return Dismissible(
            key: Key(item),
            direction: DismissDirection.endToStart,
            onDismissed: (direction) {
              setState(() {
                items.removeAt(index);
              });

              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('$item deleted')),
              );
            },
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(Icons.delete, color: Colors.white),
            ),
            
            child: ListTile(
              title: Text(item),
            ),


          );
        },
      ),
    );
  }
}
