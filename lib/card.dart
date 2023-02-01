import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({super.key});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: const [
            Card(
              color: Colors.amber,
              child: ListTile(
                leading: Icon(Icons.email),
                trailing: Icon(Icons.percent),
                title: Text('Quote of the day 1'),
                subtitle: Text('Author 1'),
              ),
            ),
            SizedBox(height: 25.0),
            Card(
              color: Colors.pink,
              child: ListTile(
                leading: Icon(Icons.percent),
                trailing: Icon(Icons.percent),
                title: Text('Quote of the day 2'),
                subtitle: Text('Author 2'),
              ),
            ),
            SizedBox(height: 25.0),
            Card(
              color: Colors.blueAccent,
              child: ListTile(
                leading: Icon(Icons.percent),
                trailing: Icon(Icons.percent),
                title: Text('Quote of the day 3'),
                subtitle: Text('Author 3'),
              ),
            ),
            SizedBox(height: 25.0),
          ],
        ),
      ),
    );
  }
}
