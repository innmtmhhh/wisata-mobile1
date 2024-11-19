import 'package:flutter/material.dart';
import 'package:wisata_mobile/latihanmodul/pertemuan5.dart';
import 'package:wisata_mobile/latihanmodul/pertemuan6.dart';
import 'package:wisata_mobile/screen/home_page.dart';
import 'package:wisata_mobile/screen/lading_page.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
