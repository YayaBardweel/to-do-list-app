import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled1/util/dialog_box.dart';
import 'package:untitled1/util/todo_title.dart';

import '../materl/text.dart';

class TheApp extends StatefulWidget {
  const TheApp({super.key});

  @override
  State<TheApp> createState() => _TheAppState();
}

class _TheAppState extends State<TheApp> {
  // List of todo
  List<List<dynamic>> toDoList = [];
  @override
  // Text Controller
  final _controller = TextEditingController();

  void SaveNewTask() {
    setState(() {
      toDoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  void crateNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return dialogbox(
            controller: _controller,
            Canceled: Navigator.of(context).pop,
            onsaved: SaveNewTask,
          );
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
        backgroundColor: Colors.deepOrangeAccent,
        actions: [
          IconButton(
              icon: Icon(Icons.add, size: 30, color: Colors.yellow),
              onPressed: crateNewTask)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: crateNewTask,
        child: Icon(Icons.add, size: 30,color: Colors.black,),
        backgroundColor: Colors.yellowAccent,
      ),
      body: ListView.builder(
          itemCount: toDoList.length,
          itemBuilder: (context, index) {
            final item = toDoList[index];
            return Dismissible(
                  key: Key(item[0]),
                  direction: DismissDirection.endToStart,
                  onDismissed: (direction) {
                    setState(() {
                      toDoList.removeAt(index);
                    });

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('${item[0]} deleted')),
                    );
                  },
                  background: Container(
                    color: Colors.red,
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Icon(Icons.delete, color: Colors.white),
                  ),
                  child: TodoTitle(to_do_text: toDoList[index][0]));
          }),
      backgroundColor: Colors.orange,
    );
  }
}
