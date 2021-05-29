import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Container(
        padding:
            EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.black,
              radius: 30.0,
              child: Icon(
                Icons.list,
                size: 40.0,
                color: Colors.redAccent,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Todoer',
              style: TextStyle(
                color: Colors.black,
                fontSize: 50.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
