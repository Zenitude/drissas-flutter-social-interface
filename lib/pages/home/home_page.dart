library home_page;

import 'package:flutter/material.dart';
import 'package:my_app/pages/home/components/firstpost_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        firstPost,
      ]),
    );
  }
}
