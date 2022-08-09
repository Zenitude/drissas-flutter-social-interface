library follow_component;

import 'package:flutter/material.dart';

class FollowProfil extends StatelessWidget {
  const FollowProfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    element(String title, String numbers) {
      return Column(
        children: 
        [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue
            ),
          ),
          Text(
            numbers
          ),
        ],
      );
    }
    return Container(
      height: 100,
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          element('Post', '2398'),
          element('Followers', '21.2K'),
          element('Follow', '1200'),
        ],
      ),
    );
  }
}