import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Green Grass Two',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home:  Builder(builder: (BuildContext context) {
        return Scaffold(
          appBar: AppBar(
              title: const Text('Green Grass Two')
          ),
          body: const GreenGrassTwoSF(),
        );
      }),
    );
  }
}

class GreenGrassTwoSF extends StatefulWidget{
const GreenGrassTwoSF({Key? key}) : super(key: key);

  @override
  State<GreenGrassTwoSF> createState() => _GreenGrassTwoSF();
}

class _GreenGrassTwoSF extends State<GreenGrassTwoSF> {

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Flexible(
            flex: 30,
            child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('images/rand.png',)
                    ))
            ),
          ),
          Flexible(
              flex: 7,
              child: Container(
                child: const Center(
                  child: const Text('Wylosowana liczba'),
                ),
              )
          ),
          Flexible(
              flex: 10,
              child: Container(
                child: const Center(
                  child: const Text('98'),
                ),
              )
          ),
          Flexible(
              flex: 7,
              child: Container(
                child: const Center(
                  child: const Text('Twoja aktualna liczba'),
                ),
              )
          ),
          Flexible(
              flex: 10,
              child: Container(
                child: const Center(
                  child: const Text('12'),
                ),
              )
          ),
          Flexible(
              flex: 20,
              child: Container(
                  margin: EdgeInsets.only(top: 25),
                  padding: EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(''),
                      const Text('-'),
                      const Text('+'),
                      const Text('x2'),
                      const Text('x3'),
                      const Text('C'),
                      const Text(''),
                      const Text('X'),
                    ],
                  )
              )
          ),
        ]
    );
  }
}