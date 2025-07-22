// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import "package:flutter/material.dart";
import "package:upi_learning/main_layout.dart";

class Latihan extends StatelessWidget {
  const Latihan({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Latihan',
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: 500,
                height: 50,
                margin: EdgeInsets.all(50),
                color: Colors.lightGreen,
                child: Center(
                  child: Text(
                    'Series Loki MCU',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                      'https://static1.cbrimages.com/wordpress/wp-content/uploads/2021/08/Other-Loki-Variants.jpg',
                      width: 500,
                    ),
                    Image.network(
                      'https://static1.cbrimages.com/wordpress/wp-content/uploads/2021/08/Other-Loki-Variants.jpg',
                      width: 500,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network('https://cdn11.bigcommerce.com/s-csqcv5l47s/images/stencil/1280x1280/products/4489/9144/Loki_Gallery_MCU_05__88587.1744999212.jpg?c=1?imbypass=on', width: 250,),
                    Image.network('https://cdn11.bigcommerce.com/s-csqcv5l47s/images/stencil/1280x1280/products/4489/9144/Loki_Gallery_MCU_05__88587.1744999212.jpg?c=1?imbypass=on', width: 250,),
                    Image.network('https://cdn11.bigcommerce.com/s-csqcv5l47s/images/stencil/1280x1280/products/4489/9144/Loki_Gallery_MCU_05__88587.1744999212.jpg?c=1?imbypass=on', width: 250,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
