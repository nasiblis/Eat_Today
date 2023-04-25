// ignore: unused_import
import 'dart:math';

// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class EatPage extends StatefulWidget {
  const EatPage({super.key});

  @override
  State<EatPage> createState() => _EatPageState();
}

class _EatPageState extends State<EatPage> {
  int soupNo = 1;
  int eatNo = 1;
  int sweetNo = 1;

  List<String> soupNames = [
    'Mercimek Çorbasi',
    'Tarhana Çorbasi',
    'Tavuksuyu Çorbasi',
    'Düğün Çorbasi',
    'Yoğurtlu Çorba'
  ];
  List<String> eatNames = [
    'Karniyarik',
    'Manti',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balik'
  ];
  List<String> sweetNames = [
    'Kadayif',
    'Baklava',
    'Sütlaç',
    'Kazadibi',
    'Dondruma'
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                onPressed: () {
                  mySetState();
                  debugPrint('Corba Button Clicked !!! - Value: $soupNo');
                },
                child: Image.asset('assets/images/corba_$soupNo.jpg'),
              ),
            ),
          ),
          Text(
            soupNames[soupNo - 1],
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          const Divider(
            height: 5,
            thickness: 2,
            indent: 50,
            endIndent: 50,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                child: Image.asset('assets/images/yemek_$eatNo.jpg'),
                onPressed: () {
                  mySetState();
                  debugPrint('Yemek Button Clicked !!! - Value: $eatNo');
                },
              ),
            ),
          ),
          Text(
            eatNames[eatNo - 1],
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          const Divider(
            height: 5,
            thickness: 2,
            indent: 50,
            endIndent: 50,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                child: Image.asset('assets/images/tatli_$sweetNo.jpg'),
                onPressed: () {
                  mySetState();
                  debugPrint('Tatli Button Clicked !!! - Value: $sweetNo');
                },
              ),
            ),
          ),
          Text(
            sweetNames[sweetNo - 1],
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  void mySetState() {
    setState(() {
      soupNo = Random().nextInt(5) + 1;
      eatNo = Random().nextInt(5) + 1;
      sweetNo = Random().nextInt(5) + 1;
    });
  }
}
