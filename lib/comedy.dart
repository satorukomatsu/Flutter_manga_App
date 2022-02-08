import 'package:flutter/material.dart';
import 'package:test_apprication/main.dart';

class Comedy extends StatelessWidget {
  const Comedy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comedy List'),
      ),
      body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(100, (index) {
            return Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/one_punch_man.jpeg',
                      height: 115,
                    ),
                    const Text('sample')
                  ],
                ));
          })),
    );
  }
}
