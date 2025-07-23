import 'package:flutter/material.dart';

class DetailCharacterPage extends StatelessWidget {
  final Map<String, dynamic> character;

  const DetailCharacterPage({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Latar belakang halaman
      appBar: AppBar(
        title: Text('Detail ${character["name"]}'),
      ),
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            // Kartu informasi
            Container(
              width: 300,
              margin: const EdgeInsets.only(top: 30),
              padding: const EdgeInsets.fromLTRB(20, 70, 20, 20),
              decoration: BoxDecoration(
                color: Colors.lightBlue[100], // 🌤️ SKY BLUE
                border: Border.all(color: Colors.black, width: 1.5),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Nama: ${character["name"]}"),
                  Text("Gender: ${character["gender"]}"),
                  Text("Level: ${character["level"]}"),
                  Text("Zodiak: ${character["zodiac"]}"),
                  Text("Point: ${character["point"]}"),
                  Text("Bio: ${character["bio"]}"),
                ],
              ),
            ),

            // Foto profil
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(character["image"]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
