// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import "package:upi_learning/main_layout.dart";

class RowSatu extends StatelessWidget {
  const RowSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'row satu',
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('Widget Text 1'),
          Text('Widget Text 2'),
          Text('Widget Text 3'),
        ],
      ),
    );
  }
}