library presentation_component;

import 'package:flutter/material.dart';

class PresentationProfil extends StatelessWidget
{
  const PresentationProfil({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context)
  {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.lightBlue, Colors.greenAccent],
        ),
      ),
      child: Column(
        children: [
          imageProfil,
          titleProfil,
          const SizedBox(height: 15),
          jobProfil,
          const SizedBox(height: 15),
          locationProfil,
        ],
      ),
    );
  }
  
}

Widget imageProfil = Row(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Container(
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 3),
        borderRadius: BorderRadius.circular(30),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(105),
        child: Image.network(
            'https://cdn.futura-sciences.com/buildsv6/images/largeoriginal/d/9/a/d9a1058910_50163142_elon-musk1.jpg'),
      ),
    )
  ],
);

Widget titleProfil = const Text(
  'Elon Musk',
  style:
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
);

Widget jobProfil = const Text(
  'UI/UX Designer / Front End Developper',
  style: TextStyle(
    color: Colors.white,
  ),
);

Widget locationProfil = Row(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: const
  [
    Icon(Icons.location_city),
    Text(
      'Los Angeles, USA',
      style: TextStyle(
        color: Colors.white
      ),
    ),
  ],
);
