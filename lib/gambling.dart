import 'package:flutter/material.dart';
import 'package:test_apprication/main.dart';

class Gambling extends StatelessWidget {
  const Gambling({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          'Gambling',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
