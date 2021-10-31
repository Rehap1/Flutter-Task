import 'package:flutter/material.dart';
import 'package:flutter_application_1/card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<OurCard> cardlist = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          leading: IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              setState(() {
                cardlist.add(OurCard(
                    name: "Rehab", email: "Rehab@", phone: "01254864698"));
              });
            },
          ),
        ),
        body: ListView.builder(
            itemCount: cardlist.length,
            itemBuilder: (context, index) {
              return cardlist[index];
            }),
      ),
    );
  }
}
