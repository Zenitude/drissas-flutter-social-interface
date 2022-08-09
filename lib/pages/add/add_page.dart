library add_page;

import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  State<AddPage> createState() {
    return _AddPageState();
  }
}

class _AddPageState extends State<AddPage> {

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Hello Add !')
    );
  }
}
