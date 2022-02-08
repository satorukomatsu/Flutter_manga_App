import 'package:flutter/material.dart';
import 'package:test_apprication/recomendation.dart';
import 'package:test_apprication/gambling.dart';
import 'package:test_apprication/comedy.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'MANGA APP',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          CarouselSlider.builder(
              itemCount: images.length,
              itemBuilder: (context, index, realIndex) {
                final path = images[index];
                return buildImage(context, path, index);
              },
              options: CarouselOptions(
                  height: 300,
                  initialPage: 0,
                  viewportFraction: 1,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 5))),
          // Container(
          //   height: 300,
          //   width: double.infinity,

          //   // decoration: const BoxDecoration(
          //   //     image: DecorationImage(
          //   //   image: AssetImage('assets/images/usogui.jpeg'),
          //   //   fit: BoxFit.cover,
          //   // )
          //   // ),
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.end,
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: <Widget>[
          //       Text(
          //         '嘘喰い',
          //         style: TextStyle(
          //             fontSize: 50,
          //             foreground: Paint()
          //               ..style = PaintingStyle.stroke
          //               ..color = Colors.deepPurple
          //               ..strokeWidth = 3),
          //       )
          //     ],
          //   ),
          // ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Recomendation()));
            },
            child: Row(
              children: [
                Container(
                  width: 330,
                  padding: const EdgeInsets.all(15),
                  height: 60,
                  child: const Text(
                    'Recomendation',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 28,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 150,
            margin: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              cacheExtent: 0.0,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Container(
                    width: 100,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        Image.asset(
                          images[index],
                          height: 110,
                        ),
                        const Text('sample')
                      ],
                    ));
              },
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Gambling()));
            },
            child: Row(children: <Widget>[
              Container(
                  width: 330,
                  padding: const EdgeInsets.all(15),
                  height: 60,
                  child: const Text(
                    'Gambling',
                    style: TextStyle(fontSize: 25),
                  )),
              const Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.arrow_forward,
                  size: 28,
                ),
              )
            ]),
          ),
          Container(
            height: 150,
            margin: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              cacheExtent: 0.0,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Container(
                    width: 100,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        Image.asset(
                          images[index],
                          height: 110,
                        ),
                        const Text('sample')
                      ],
                    ));
              },
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Comedy()));
            },
            child: Row(children: <Widget>[
              Container(
                  width: 330,
                  padding: const EdgeInsets.all(15),
                  height: 60,
                  child: const Text(
                    'Comedy',
                    style: TextStyle(fontSize: 25),
                  )),
              const Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.arrow_forward,
                    size: 28,
                  ))
            ]),
          ),
          Container(
            height: 150,
            margin: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              cacheExtent: 0.0,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Container(
                    width: 100,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        Image.asset(
                          images[index],
                          height: 110,
                        ),
                        const Text('sample')
                      ],
                    ));
              },
            ),
          )
        ],
      ),
    );
  }
}

Widget buildImage(context, path, index) => Container(
      width: MediaQuery.of(context).size.width,
      child: Image.asset(
        path,
        fit: BoxFit.cover,
      ),
    );
