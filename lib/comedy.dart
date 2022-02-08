import 'package:flutter/material.dart';
import 'package:test_apprication/main.dart';

class Comedy extends StatelessWidget {
  const Comedy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          'Comedy',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
