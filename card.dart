import 'package:flutter/material.dart';

class OurCard extends StatefulWidget {
  final String name;
  final String email;
  final String phone;

  const OurCard(
      {Key? key, required this.name, required this.email, required this.phone})
      : super(key: key);

  @override
  _OurCardState createState() => _OurCardState();
}

class _OurCardState extends State<OurCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: 300,
        height: 180,
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                child: Icon(Icons.image),
              ),
              SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.name),
                  Row(
                    children: [
                      Icon(Icons.email),
                      SizedBox(
                        width: 10,
                      ),
                      Text(widget.email),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.phone),
                      SizedBox(
                        width: 10,
                      ),
                      Text(widget.phone)
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Icon(Icons.favorite, color: Colors.red),
                      Icon(Icons.favorite, color: Colors.red),
                      Icon(Icons.favorite, color: Colors.red),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.local_offer_outlined),
                      Text('Boss'),
                      SizedBox(width: 20),
                      Icon(
                        Icons.delete_outline,
                        size: 35,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
