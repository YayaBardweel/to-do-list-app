import 'package:flutter/material.dart';
import 'package:untitled1/materl/MyButton.dart';

class dialogbox extends StatelessWidget {
  final controller;
  VoidCallback onsaved;
  VoidCallback Canceled;
  dialogbox(
      {super.key,
      this.controller,
      required this.Canceled,
      required this.onsaved});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 150,
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Add your task"),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //save button
                mybutton(onPressed: onsaved, text: 'save'),
                SizedBox(width: 40),
                //cancel button
                mybutton(onPressed: Canceled, text: 'cancel'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
