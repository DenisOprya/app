import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            'Новинки',
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ]),
    );
  }
}
