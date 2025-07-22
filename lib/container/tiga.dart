// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import "package:upi_learning/container/dua.dart";
import "package:upi_learning/main_layout.dart";

class ContainerTiga extends StatelessWidget {
  const ContainerTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Container Tiga',
      body: Center(
        child: Container(
          width: 500,
          height: 500,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurple,
                Colors.black,
                Colors.deepPurpleAccent
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: Container(
            margin: EdgeInsets.all(70),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 255, 4, 0),
                  Color.fromARGB(255, 0, 0, 0),
                  Color.fromARGB(255, 255, 0, 0)
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            child: Container(
              margin: EdgeInsets.all(80),
              decoration: BoxDecoration(color: Colors.amber),
              child: Center(
                child: ElevatedButton(
                  child: Text("Container 2"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ContainerDua()));
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
