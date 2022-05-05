import 'package:flutter/material.dart';

class ScreenMain extends StatelessWidget {
  ScreenMain({Key? key}) : super(key: key);

  final _list = ['Apple', 'Orange', 'Pine Apple'];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: DropdownButtonFormField(
            hint: Text('Select fruits'),
              items: _list.map((e) {
                return DropdownMenuItem(value: e, child: Text(e));
              }).toList(),
              onChanged: (value) {
                print(value);
              })),
    );
  }
}
