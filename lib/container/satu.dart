// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:upi_learning/main_layout.dart';

class ContainerSatu extends StatelessWidget {
  const ContainerSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Container Satu',
        body: Container(
          width: 200,
          height: 100,
          color: Colors.amber,
          child: Center(
            child: Text("Hello Flutter"),
          ),
        ),
        
    );
  }
}
