import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secday/view/component/add_note_component/notes_textFormField_comp.dart';

class AddNotePage extends StatelessWidget {
  DateTime date =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
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
          "Add Note",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 8.0, right: 8, top: 15, bottom: 10),
            child: getNotesTextFormField("Title", "Enter Title"),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 8.0, right: 8, top: 10, bottom: 10),
            child: getNotesTextFormField("Date", date.toString()),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 8.0, right: 8, top: 10, bottom: 10),
            child: TextFormField(
              maxLines: 20,
              minLines: 10,
              decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.black),
                  focusedBorder:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  labelText: "Note",
                  hintText: "Enter Note",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  )
                  //(borderRadius: BorderRadius.circular(20))
                  ),
            ),
          ),
          ElevatedButton(
            child: Text("+Add"),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                fixedSize: Size(100, 50)),
          )
        ]),
      ),
    );
  }
}
