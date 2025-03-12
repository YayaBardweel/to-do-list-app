import 'package:flutter/material.dart';

class mybutton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const mybutton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white,fontSize: 18),
        ),
      ),
    );
  }
}
