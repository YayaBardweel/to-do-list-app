import 'package:flutter/material.dart';
import 'package:untitled1/materl/text.dart';

class TodoTitle extends StatelessWidget {
  const TodoTitle({super.key});

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
            Text(
              "do your home work",
              style: textType(Colors.white, 20, FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
