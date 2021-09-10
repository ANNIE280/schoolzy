import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  TextSection({required this.text, required this.child});

  final String text;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Text(
          text,
          style: TextStyle(fontSize: 24),
        ),
        trailing: child);
  }
}
