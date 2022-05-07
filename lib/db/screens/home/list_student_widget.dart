import 'package:flutter/material.dart';
import 'package:sample_widgets/db/functions/db_functions.dart';

import '../../model/data_model.dart';

class ListStudentWidget extends StatelessWidget {
  const ListStudentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: studentListNotifier,
      builder:
          (BuildContext ctx, List<StudentModel> studentList, Widget? child) {
        return ListView.separated(
          itemCount: studentList.length,
          itemBuilder: (BuildContext ctx, int index) {
            final data = studentList[index];
            return ListTile(
              title: Text('Name ${data.name}'),
              subtitle: Text('Age ${data.age}'),
            );
          },
          separatorBuilder: (BuildContext ctx, int index) {
            return const Divider();
          },
        );
      },
    );
  }
}
