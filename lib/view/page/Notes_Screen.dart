import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secday/view/page/add_Note_screen.dart';

class NotesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),
        title: Text(
          "Notes",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "There's No Data To Show",
          style: TextStyle(fontSize: 20),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddNotePage()),
          );
        },
        backgroundColor: Colors.blueGrey,
        child: const Icon(Icons.add),
      ),
    );
  }
}
