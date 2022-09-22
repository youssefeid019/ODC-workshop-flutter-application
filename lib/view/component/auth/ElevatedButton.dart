import 'package:flutter/material.dart';


Widget getElevatedButton(String label) {
  return ElevatedButton(
    child: Text(label),
    onPressed: () {
    
      
    },
    style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        fixedSize: Size(350, 50)),
  );
}
