import 'package:flutter/material.dart';

class NoKey extends StatelessWidget {
  const NoKey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(1),
      color: Colors.white24,
      height: 60,
      width: MediaQuery.of(context).size.width / 3 - 3,
      child: Center(
        child: Text(
          '',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
