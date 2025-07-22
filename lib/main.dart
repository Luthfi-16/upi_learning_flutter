// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:upi_learning/container/dua.dart';
import 'package:upi_learning/container/satu.dart';
import 'package:upi_learning/container/tiga.dart';
import 'package:upi_learning/row_column/column_satu.dart';
import 'package:upi_learning/row_column/latihan.dart';
import 'package:upi_learning/row_column/row_column.dart';
import 'package:upi_learning/row_column/row_satu.dart';

void main() {
  runApp(BelajarFlutter());
}

class BelajarFlutter extends StatelessWidget {
  const BelajarFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Latihan(),
    );
  }
}

class HelloFlutter extends StatelessWidget {
  const HelloFlutter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Hello Upi!', style: TextStyle(
        color: Colors.amberAccent,
        fontSize: 24,
        fontWeight: FontWeight.bold,
        backgroundColor: Colors.blue,
      ),),
    );
  }
}