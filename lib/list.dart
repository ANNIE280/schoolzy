import 'package:flutter/material.dart';
import 'package:schoolzy/textsection.dart';

class ClassList extends StatefulWidget {
  const ClassList({Key? key}) : super(key: key);

  @override
  _ClassListState createState() => _ClassListState();
}

class _ClassListState extends State<ClassList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(),
      body: ListView(
        children: [
          TextSection(
            text: 'Cynthia Nnaemeka',
            child: Switch(value: true, onChanged: (value) {}),
          ),
          TextSection(
            text: 'Cynthia Nnaemeka',
            child: Switch(value: true, onChanged: (value) {}),
          ),
          TextSection(
            text: 'Cynthia Nnaemeka',
            child: Switch(value: true, onChanged: (value) {}),
          ),
          TextSection(
            text: 'Cynthia Nnaemeka',
            child: Switch(value: true, onChanged: (value) {}),
          ),
        ],
      ),
    );
  }
}
