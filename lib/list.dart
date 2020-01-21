import 'package:flutter/material.dart';

import 'modal.dart';

class Todo extends StatefulWidget {
  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  Map<String, bool> todos = {
    "read a book": false,
    "clean a home": false,
    "go to school": false,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To do List"),
      ),
      body: ListView(
        children: todos.keys.map((String key) {
          return CheckboxListTile(
              title: Text(key),
              value: todos[key],
              onChanged: (bool value) {
                setState(() {
                  todos[key] = value;
                });
              });
        }).toList(),
      ),
      floatingActionButton: Mdal(),
    );
  }
}
