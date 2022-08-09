library about_component;

import 'dart:html';

import 'package:flutter/material.dart';

class AboutProfil extends StatelessWidget {
  const AboutProfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleSection,
          const SizedBox(height: 10),
          contentSection,
          const SizedBox(height: 30),
          buttonSection,
        ],
      ),
    );
  }
}

Widget titleSection = const Text(
  'À propos',
  style: TextStyle(
    color: Colors.blue, 
    fontWeight: FontWeight.bold, 
    fontSize: 20
  ),
);

Widget contentSection = const Text(
  'Elon Musk, né le 28 juin 1971 à Pretoria, est un entrepreneur, chef d\'entreprise et ingénieur sud-africain, naturalisé canadien en 1998 puis américain en 2002.',
  textAlign: TextAlign.justify,
);

Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: 
  [
    ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: () {},
      child: Container(
        width: 150,
        height: 40,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: 
            [
              Colors.lightBlue,
              Colors.greenAccent
            ]
          ),
          borderRadius: BorderRadius.all(Radius.circular(30))
        ),
        child: const Center(
          child: Text(
            'Suivre',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20
            ),
          ),
        ),
      ),
    ),
  ],
);