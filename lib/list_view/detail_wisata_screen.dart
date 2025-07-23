// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import "dart:ui";

import "package:flutter/material.dart";
import "package:upi_learning/main_layout.dart";

class DetailWisataScreen extends StatelessWidget {
  final String nama;
  final String kota;
  final String image;
  final String desc;

  DetailWisataScreen({
    required this.nama,
    required this.kota,
    required this.image,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: nama,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [const Color.fromARGB(255, 255, 116, 162), const Color.fromARGB(255, 255, 239, 95), const Color.fromARGB(255, 128, 214, 225)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10,),
              Center(child: Text("$nama - $kota"),),
              SizedBox(height: 10,),
              Container(
                alignment: Alignment.bottomLeft,
                height: 200,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover, 
                  )
                ),
              ),
              SizedBox(height: 10,),
              Container(height: 280,child: Text(desc)),
            ],
          ),
        ),
      ),
    );
  }
}
