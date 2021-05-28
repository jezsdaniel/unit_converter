import 'package:flutter/material.dart';

class MeasureDrawer extends StatelessWidget {
  const MeasureDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Unit converter',
              ),
            ),
            Divider(
              height: 1,
              thickness: 1,
            ),
            ListTile(
              title: Text('Length'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
  }
}