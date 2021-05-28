import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';
import 'package:unit_converter/providers/MeasureProvider.dart';
import 'package:unit_converter/widgets/TouchKeyboard.dart';
import 'package:unit_converter/widgets/MeasureInput.dart';
import 'package:unit_converter/widgets/MeasureDrawer.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => MeasureProvider(),
    child: MaterialApp(
      title: 'Unit converter',
      home: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  String _appBarTitle = '';

  @override
  void initState() {
    _appBarTitle = "Length";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double sizeX = MediaQuery.of(context).size.width;
    double sizeY = MediaQuery.of(context).size.height;

    final spacer = Padding(padding: EdgeInsets.only(bottom: sizeY / 60));

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black87),
        backgroundColor: Colors.white24,
        elevation: 0,
        title: Row(
          children: [
            Text(
              _appBarTitle,
              style: TextStyle(
                color: Colors.black87,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Icon(Ionicons.resize_outline),
            ),
          ],
        ),
      ),
      // drawer: MeasureDrawer(),
      body: Container(
        width: sizeX,
        padding: EdgeInsets.only(top: sizeX / 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: sizeX / 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MeasureInput(
                    hintText: 'From',
                    isInput: true,
                  ),
                  spacer,
                  MeasureInput(
                    hintText: 'To',
                    isInput: false,
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: TouchKeyboard(),
            ),
          ],
        ),
      ),
    );
  }
}
