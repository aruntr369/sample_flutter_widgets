import 'package:flutter/material.dart';
import 'package:sample_widgets/db/screens/home/add_student_widget.dart';
import 'package:sample_widgets/db/screens/home/list_student_widget.dart';

class ScreenHomeDB extends StatelessWidget {
  const ScreenHomeDB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          AddStudentWidget(),
          const Expanded(child: ListStudentWidget())
        ],
      )),
    );
  }
}
