import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:second_day/card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> quote = [
    'Quote of the day 1',
    'Quote of the day 2',
    'Quote of the day 3',
    'Quote of the day 4',
    'Quote of the day 5'
  ];
  List<String> author = [
    'Author 1',
    'Author 2',
    'Author 3',
    'Author 4',
    'Author 5'
  ];
  List<Icon> icn = [
    const Icon(Icons.email),
    const Icon(Icons.password),
    const Icon(Icons.percent),
    const Icon(Icons.person),
    const Icon(Icons.search)
  ];
  List<Color> col = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.purple
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      // body: const CardWidget(),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: quote.length,
          itemBuilder: (context, index) {
            return ListTileTheme(
                child: Card(
              color: col[index],
              child: ListTile(
                leading: icn[index],
                trailing: icn[index],
                title: Text(quote[index]),
                subtitle: Text(author[index]),
              ),
            ));
          }),
    );
  }
}
