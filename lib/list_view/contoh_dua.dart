import "package:flutter/material.dart";
import "package:upi_learning/main_layout.dart";

class ListDua extends StatelessWidget {
  const ListDua({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Contoh List View Builder',
      body: ListView.builder(
          itemCount: 9,
          itemBuilder: (context, index) {
            return Container(
              width: 200,
              height: 200,
              margin: EdgeInsets.all(10),
              color: Colors.amber[(index + 1) * 100],
              child: FlutterLogo(),
            );
          }),
    );
  }
}
