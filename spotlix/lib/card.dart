import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  const MyCard({Key? key, required this.number}) : super(key: key);

  final int number;

  @override
  State<MyCard> createState() => _MyCard();
}

class _MyCard extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          debugPrint('Card ${widget.number} tapped.');
        },
        child: SizedBox(
          width: 300,
          height: 100,
          child: Text('Card ${widget.number}'),
        ),
      ),
    );
  }
}
