import 'package:flutter/material.dart';
import 'package:upi_learning/list_view/detail_character.dart';
import 'package:upi_learning/main_layout.dart';

class LatihanSatu extends StatelessWidget {
  LatihanSatu({super.key});

  final List<Map<String, dynamic>> characterList = [
    {
      "name": "Hu Tao",
      "gender": "Perempuan",
      "level": "90",
      "bio": "Icikiwir",
      "zodiac": "Kuda",
      "point": "8760",
      "image": "images/hutao.jpg"
    },
    {
      "name": "Kazuha",
      "gender": "Laki Laki",
      "level": "80",
      "bio": "Slebeww",
      "zodiac": "Berit",
      "point": "9780",
      "image": "images/kazuha.jpg"
    },
    {
      "name": "Nahida",
      "gender": "Perempuan",
      "level": "40",
      "bio": "Mantap Rek",
      "zodiac": "Kepiting",
      "point": "3280",
      "image": "images/nahida.jpg"
    },
    {
      "name": "Diluc",
      "gender": "Laki Laki",
      "level": "100",
      "bio": "wassap dud",
      "zodiac": "Banteng",
      "point": "17721",
      "image": "images/diluc.jpg"
    },
    {
      "name": "Furina",
      "gender": "Perempuan",
      "level": "50",
      "bio": "Laut itu indah",
      "zodiac": "Ubur Ubur",
      "point": "5367",
      "image": "images/furina.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'List Character',
      body: SafeArea(
        child: ListView.builder(
          itemCount: characterList.length,
          itemBuilder: (context, index) {
            var character = characterList[index];

            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 152, 209, 255),
                border: Border.all(color: Colors.black, width: 1.5),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  // Gambar bulat
                  Container(
                    width: 50,
                    height: 50,
                    margin: const EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black, width: 2),
                      image: DecorationImage(
                        image: AssetImage(character["image"]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  // Nama dan point
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          character["name"],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("Point: ${character["point"]}"),
                      ],
                    ),
                  ),

                  // Tombol Detail
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailCharacterPage(character: character),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 15),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Text(
                        "Detail",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
