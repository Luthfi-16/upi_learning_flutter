import 'package:flutter/material.dart';
import 'package:upi_learning/main_layout.dart';

class OutputFormScreen extends StatelessWidget {
  final String nama, jk, tglLahir, agama;

  OutputFormScreen({
    Key? key,
    required this.nama,
    required this.jk,
    required this.tglLahir,
    required this.agama,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Form',
      body: Center(
        child: Container(
          width: 300,
          height: 400,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
          ),
          child: Column(
            children: [
              SizedBox(height: 16),
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Data Diri',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 24),
              buildDataRow('Nama', nama),
              buildDataRow('Jenis Kelamin', jk),
              buildDataRow('Tanggal Lahir', tglLahir),
              buildDataRow('Agama', agama),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDataRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Row(
        children: [
          Text(
            '$label: ',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Text(value),
          ),
        ],
      ),
    );
  }
}
