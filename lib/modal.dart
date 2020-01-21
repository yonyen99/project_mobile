import 'package:flutter/material.dart';

class Mdal extends StatefulWidget {
  @override
  _MdalState createState() => _MdalState();
}

class _MdalState extends State<Mdal> {
  String text = 'text';
  TextEditingController todController = TextEditingController();
  createModal(BuildContext context) {
    borderRadius:
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            title: Text("New Todo"),
            content: TextField(
              autofocus: true,
              controller: todController,
            ),
            actions: <Widget>[
              MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Cancel',
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              ),

              MaterialButton(
                color: Colors.blue,
                child: Text(
                  "add",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                  debugPrint(todController.text.toString());
                 
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => createModal(context),
      child: Icon(Icons.add),
      // backgroundColor: Colors.green,
    );
  }
}
