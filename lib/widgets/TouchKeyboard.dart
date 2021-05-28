import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:unit_converter/widgets/IconKey.dart';
import 'package:unit_converter/widgets/NoKey.dart';
import 'package:unit_converter/widgets/TouchKey.dart';

class TouchKeyboard extends StatelessWidget {
  const TouchKeyboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NoKey(),
              IconKey(
                icon: Ionicons.refresh_outline,
                action: "C",
              ),
              IconKey(
                icon: Ionicons.backspace_outline,
                action: "D",
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TouchKey(number: 7),
              TouchKey(number: 8),
              TouchKey(number: 9),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TouchKey(number: 4),
              TouchKey(number: 5),
              TouchKey(number: 6),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TouchKey(number: 1),
              TouchKey(number: 2),
              TouchKey(number: 3),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NoKey(),
              TouchKey(number: 0),
              NoKey(),
            ],
          ),
        ],
      ),
    );
  }
}
