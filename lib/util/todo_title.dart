import 'package:flutter/material.dart';
import 'package:untitled1/materl/text.dart';

class TodoTitle extends StatefulWidget {
  final String to_do_text;
  const TodoTitle({super.key, required this.to_do_text});

  @override
  State<TodoTitle> createState() => _TodoTitleState();
}

class _TodoTitleState extends State<TodoTitle> {
  bool done = false;

  @override

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.deepOrangeAccent,
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Checkbox(
                value: done, onChanged: (bool? value) {
                  setState(() {
                    done = value ?? false;

                  });
            }),
            Text(
              widget.to_do_text,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                decoration: done ? TextDecoration.lineThrough : null,
                decorationColor: Colors.black,
                decorationThickness: 3,
                fontSize: 20,

              ),
            ),
          ],
        ),
      ),
    );
  }
}

