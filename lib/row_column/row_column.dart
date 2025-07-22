// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import "package:flutter/material.dart";
import "package:upi_learning/main_layout.dart";

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Row Column',
      body: Center(
        child: Container(
          height: 80,
          width: double.infinity,
          color: Colors.blueGrey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.mail),
                  SizedBox(height: 10,),
                  Text('Mail'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.navigation),
                  SizedBox(height: 10,),
                  Text('Route'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.share),
                  SizedBox(height: 10,),
                  Text('Share'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Photo'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}