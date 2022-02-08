import 'package:flutter/material.dart';
import 'package:test_apprication/main.dart';

class Recomendation extends StatelessWidget {
  const Recomendation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          'Recomendation',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
