// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:upi_learning/list_view/detail_wisata_screen.dart";
import "package:upi_learning/main_layout.dart";

class WisataScreen extends StatelessWidget {
  WisataScreen({super.key});

  final List<Map<String, dynamic>> wisataData = [
    {
      "nama": "Ubud",
      "kota": "Bali",
      "image": "images/ubud.jpg",
      "desc": "Ubud adalah salah satu pantai di Bali ...."
    },
    {
      "nama": "Nusa Penida",
      "kota": "Bali",
      "image": "images/penida.jpg",
      "desc": "Nusa Penida adalah salah destinasi wisata di Bali ...."
    },
    {
      "nama": "Kuta",
      "kota": "Bali",
      "image": "images/kuta.jpg",
      "desc": "Kuta adalah salah satu pantai di Bali ...."
    },
    {
      "nama": "Ranca Upas",
      "kota": "Bandung",
      "image": "images/ranca_upas.jpg",
      "desc": "Ranca Upas adalah salah satu destinasi alam di Bandung ...."
    },
    {
      "nama": "Candi Prambanan",
      "kota": "Yogyakarta",
      "image": "images/prambanan.jpg",
      "desc":
          "Candi Prambanan adalah salah satu tempat wisata di Yogyakarta ...."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.purple, Colors.pink, Colors.orangeAccent],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight)),
        child: ListView.builder(
          itemCount: wisataData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailWisataScreen(
                      nama: wisataData[index]["nama"],
                      kota: wisataData[index]["kota"],
                      image: wisataData[index]["image"],
                      desc: wisataData[index]["desc"],
                    ),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                height: 250,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage("${wisataData[index]["image"]}"),
                        fit: BoxFit.cover)),
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black),
                  child: Text(
                    "${wisataData[index]["nama"]} - ${wisataData[index]["kota"]}",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}


