import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unit_converter/providers/MeasureProvider.dart';

class TouchKey extends StatelessWidget {
  const TouchKey({Key? key, required this.number}) : super(key: key);

  final int number;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          context.read<MeasureProvider>().addNumber(number);
        },
        child: Container(
          margin: EdgeInsets.all(1),
          color: Colors.black12,
          height: 60,
          width: MediaQuery.of(context).size.width / 3 - 3,
          child: Center(
            child: Text(
              number.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
      ),
    );
  }
}
