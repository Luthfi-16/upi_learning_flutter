// ignore_for_file: unused_import, sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import "package:upi_learning/container/satu.dart";
import "package:upi_learning/main_layout.dart";

class ContainerDua extends StatelessWidget {
  const ContainerDua({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Container 2',
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(24),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.black, Colors.deepPurpleAccent],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
            boxShadow: [
              BoxShadow(color: Color.fromARGB(255, 170, 0, 255), spreadRadius: 2)
            ]),
        child: Center(
          child: ElevatedButton(
            child: Text("Container 1"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => 
                ContainerSatu())
              );
            },
          ),
        ),
      ),
    );
  }
}
