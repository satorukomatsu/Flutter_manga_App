import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Test App',
      theme: ThemeData.dark(),
      home: const MyHomePage(title: 'Comic　App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> images = <String>[
    'assets/images/usogui.jpeg',
    'assets/images/one_punch_man.jpeg',
    'assets/images/baki.jpeg',
    'assets/images/usogui.jpeg',
    'assets/images/one_punch_man.jpeg',
    'assets/images/baki.jpeg',
    'assets/images/usogui.jpeg',
    'assets/images/one_punch_man.jpeg',
    'assets/images/baki.jpeg',
    'assets/images/usogui.jpeg',
    'assets/images/one_punch_man.jpeg',
    'assets/images/baki.jpeg',
    'assets/images/usogui.jpeg',
    'assets/images/one_punch_man.jpeg',
    'assets/images/baki.jpeg',
    'assets/images/usogui.jpeg',
    'assets/images/one_punch_man.jpeg',
    'assets/images/baki.jpeg',
    'assets/images/usogui.jpeg',
    'assets/images/one_punch_man.jpeg',
    'assets/images/baki.jpeg',
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('MANGA APP',
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/usogui.jpeg'),
                  fit: BoxFit.cover,
                )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:<Widget>[
                Text('嘘喰い',

                  style: TextStyle(
                      fontSize: 50,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..color = Colors.deepPurple
                        ..strokeWidth = 3
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            height: 60,
            child: Text('Recomendation',
              style: TextStyle(
                fontSize: 25
              ),
            )
          ),
          Container(
            height: 150,
            margin: EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              cacheExtent: 0.0,
              itemCount: images.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    margin: EdgeInsets.symmetric(
                      horizontal: 15
                    ),
                      child: Column(
                        children: [
                          Image.asset(images[index],
                            height: 110,
                          ),
                          Text('sample')
                        ],
                      )
                  );
                },
            ),
          ),
          Container(
              padding: EdgeInsets.all(15),
              height: 60,
              child: Text('Gambling',
                style: TextStyle(
                    fontSize: 25
                ),
              )
          ),
          Container(
            height: 150,
            margin: EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              cacheExtent: 0.0,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Container(
                    width: 100,
                    margin: EdgeInsets.symmetric(
                        horizontal: 15
                    ),
                    child: Column(
                      children: [
                        Image.asset(images[index],
                          height: 110,
                        ),
                        Text('sample')
                      ],
                    )
                );
              },
            ),
          ),
          Container(
              padding: EdgeInsets.all(15),
              height: 60,
              child: Text('Comedy',
                style: TextStyle(
                    fontSize: 25
                ),
              )
          ),
          Container(
            height: 150,
            margin: EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              cacheExtent: 0.0,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Container(
                    width: 100,
                    margin: EdgeInsets.symmetric(
                        horizontal: 15
                    ),
                    child: Column(
                      children: [
                        Image.asset(images[index],
                          height: 110,
                        ),
                        Text('sample')
                      ],
                    )
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
