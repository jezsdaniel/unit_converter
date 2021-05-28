import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unit_converter/providers/MeasureProvider.dart';
import 'package:unit_converter/utils/length.dart';

class MeasureInput extends StatefulWidget {
  MeasureInput({Key? key, required this.hintText, required this.isInput})
      : super(key: key);

  final String hintText;
  final bool isInput;

  @override
  _MeasureInputState createState() => _MeasureInputState();
}

class _MeasureInputState extends State<MeasureInput> {
  String _startMeasure = 'meters';

  @override
  Widget build(BuildContext context) {
    final TextStyle measureNumberStyle = TextStyle(fontSize: 42);

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            (widget.isInput
                ? '${context.watch<MeasureProvider>().inputMeasure}'
                : '${context.watch<MeasureProvider>().outputMeasure}'),
            style: measureNumberStyle,
          ),
          DropdownButton(
            iconSize: 36,
            items: lengthMeasures.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                _startMeasure = value.toString();
                if (widget.isInput) {
                  context
                      .read<MeasureProvider>()
                      .changeFrom(lengthMeasuresMap[value.toString()]);
                } else {
                  context
                      .read<MeasureProvider>()
                      .changeTo(lengthMeasuresMap[value.toString()]);
                }
              });
            },
            value: _startMeasure,
            hint: Text(widget.hintText),
            style: TextStyle(
              color: Colors.black87,
              fontSize: 18,
            ),
            underline: SizedBox(),
          ),
        ],
      ),
    );
  }
}
