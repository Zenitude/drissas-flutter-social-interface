library firstpost_component;

import 'package:flutter/material.dart';

Widget firstPost = Container(
  margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
  padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
  decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3))
      ]),
  child: Column(children: [
    Row(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(10, 0, 15, 0),
          height: 50,
          width: 50,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.network(
                'https://media-exp1.licdn.com/dms/image/C560BAQEbqLQ-JE0vdQ/company-logo_200_200/0/15469811484841?e=2147483647&v=beta&t=cc63LBAaoBTDPLJnN0XS296ziR9hGyKu8E5NyzmyTCE'),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('SpaceX',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            Text('Florida')
          ],
        ),
      ],
    ),
    const SizedBox(height: 10),
    Image.network(
        'https://cap.img.pmdstatic.net/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Fcap.2F2020.2F05.2F31.2F4244803e-de5c-4f69-902d-d7d64be29d90.2Ejpeg/1200x630/background-color/ffffff/quality/70/cr/wqkgIE9ybGFuZG68gU2VudGluZWwgLyBDb250cmlidXRldXIgLyBHZXR0eSBJbWFnZXMgLyBDQVBJVEFM/decollage-reussi-pour-la-fusee-spacex-elon-musk-remporte-son-pari-1371378.jpg'),
    Row(
      children: [
        IconButton(
            onPressed: () {
              debugPrint('favoris');
            },
            icon: const Icon(Icons.favorite)),
        IconButton(
            onPressed: () {
              debugPrint('comment');
            },
            icon: const Icon(Icons.comment)),
        IconButton(
            onPressed: () {
              debugPrint('share');
            },
            icon: const Icon(Icons.share)),
      ],
    ),
    Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: const Text(
          'Deux astronautes américains se sont envolés samedi depuis le centre spatial Kennedy, en Floride, à bord d\'une fusée de l\'entreprise privée SpaceX, fondée par Elon Musk.'),
    )
  ]),
);
