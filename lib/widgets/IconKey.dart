import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unit_converter/providers/MeasureProvider.dart';

class IconKey extends StatelessWidget {
  const IconKey({Key? key, required this.icon, required this.action})
      : super(key: key);

  final IconData icon;
  final String action;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          if (action.contains('C')) {
            context.read<MeasureProvider>().clear();
          } else if (action.contains('D')) {
            context.read<MeasureProvider>().deleteNumber();
          }
        },
        child: Container(
          margin: EdgeInsets.all(1),
          color: Colors.black12,
          height: 60,
          width: MediaQuery.of(context).size.width / 3 - 3,
          child: Center(
            child: Icon(icon),
          ),
        ),
      ),
    );
  }
}
