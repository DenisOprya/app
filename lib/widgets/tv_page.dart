import 'package:flutter/material.dart';

class TvPage extends StatelessWidget {
  const TvPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            'ТВ',
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ]),
    );
  }
}
