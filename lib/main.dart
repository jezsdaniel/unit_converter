import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Unit converter',
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  String _appBarTitle = '';

  double? _numberForm;

  String? _startMeasure;
  String? _convertedMeasure;

  final List<String> _measures = [
    'meters',
    'kilometers',
    'grams',
    'kilograms',
    'feet',
    'miles',
    'pounds (lbs)',
    'ounces',
  ];

  @override
  void initState() {
    _numberForm = 0;
    _appBarTitle = "Lenght";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double sizeX = MediaQuery.of(context).size.width;
    double sizeY = MediaQuery.of(context).size.height;

    final TextStyle inputStyle =
        TextStyle(fontSize: 20, color: Colors.blue[900]);
    final TextStyle labelStyle =
        TextStyle(fontSize: 24, color: Colors.grey[700]);

    final spacer = Padding(padding: EdgeInsets.only(bottom: sizeY / 40));

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black87),
        backgroundColor: Colors.white24,
        elevation: 0,
        title: Text(
          _appBarTitle,
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: Text('Length'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Weight'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Container(
        width: sizeX,
        padding: EdgeInsets.all(sizeX / 20),
        child: Column(
          children: [
            Text(
              'From:',
            ),
            Text(
              'To:',
            ),
          ],
        ),
      ),
    );
  }
}
