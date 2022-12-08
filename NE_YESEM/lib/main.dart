import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Center(
            child: Text(
              "BUGÜN NE YESEM",
              style: GoogleFonts.oswald(
                fontSize: 28,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: BodyWidget(),
      ),
    );
  }
}

class BodyWidget extends StatefulWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  State<BodyWidget> createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  int corba = 1;
  int yemek = 1;
  int tatli = 1;
  List<String> corbalar = [
    "MERCİMEK",
    "TARHANA",
    "TAVUK SUYU",
    "DÜĞÜN ÇORBASI",
    "YOĞURT ÇORBASI",
  ];
  List<String> yemekler = [
    "KARNIYARIK",
    "MANTI",
    "KURU FASULYE",
    "İÇLİ KÖFTE",
    "IZGARA BALIK",
  ];
  List<String> tatlilar = [
    "KADAYIF",
    "BAKLAVA",
    "SÜTLAÇ",
    "KAZANDİBİ",
    "DONDURMA",
  ];
  void numberGenerator() {
    setState(
      () {
        corba = Random().nextInt(5) + 1;
        yemek = Random().nextInt(5) + 1;
        tatli = Random().nextInt(5) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: numberGenerator,
                child: Image.asset('images/corba_$corba.jpg'),
              ),
            ),
          ),
          Text(
            corbalar[corba - 1],
            style: TextStyle(fontSize: 15),
          ),
          Container(
              width: 200,
              child: Divider(
                color: Colors.deepOrangeAccent,
              )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: numberGenerator,
                child: Image.asset('images/yemek_$yemek.jpg'),
              ),
            ),
          ),
          Text(
            yemekler[yemek - 1],
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          Container(
            width: 200,
            child: Divider(
              color: Colors.deepOrange[500],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: numberGenerator,
                child: Image.asset('images/tatli_$tatli.jpg'),
              ),
            ),
          ),
          Text(
            tatlilar[tatli - 1],
            style: TextStyle(fontSize: 15),
          ),
          Container(
            width: 200,
            child: Divider(color: Colors.deepOrange[900]),
          )
        ],
      ),
    );
  }
}
