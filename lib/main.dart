import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Drum shop',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 242, 222, 5),
          ),
        ),
        backgroundColor: Colors.blue[500],
        centerTitle: true,
      ),
      body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: const <Widget>[
            ProductBox(
              name: 'Snare drums',
              description: 'The best you can fing in cameroon',
              price: 15000,
              image: 'snare1.jfif',
            ),
            ProductBox(
              image: 'base1.jfif',
              name: 'Base drum',
              description: 'Sounds pretty good. Made from rubber',
              price: 20000,
            ),
            ProductBox(
              name: 'Drum toms',
              description: 'Loud enough to use without mics.',
              price: 17000,
              image: 'tom1.jfif',
            ),
            ProductBox(
              name: 'Drum Sticks',
              description: 'Comfortable,smooth and last for long',
              price: 5000,
              image: 'sticks1.jfif',
            ),
            ProductBox(
              name: 'High hat',
              description: 'Sounds pretty good. Made from bronze alloy',
              price: 15000,
              image: 'high_hat1.jfif',
            ),
            ProductBox(
              name: 'Drum pedal',
              description: 'Flexible and adjustable',
              price: 12000,
              image: 'pedal2.jfif',
            ),
            ProductBox(
              name: 'Drum chair',
              description: 'Soft and stable for long time drumming',
              price: 10000,
              image: 'chair1.jfif',
            ),
          ]),
      backgroundColor: Colors.blue[200],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue[500],
        child: const Text(
          'BUY',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 242, 222, 5),
          ),
        ),
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  const ProductBox(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);

  ///ive not really understood this concept
  final String name;
  final String description;
  final int price;
  final String image;

  /// The question mark means not nullable
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              flex: 4,
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'images/$image',
                ),
                radius: 40.0,
              ),
            ),
            Expanded(
                flex: 6,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        description,
                      ),
                      Text("Price: $price"),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
