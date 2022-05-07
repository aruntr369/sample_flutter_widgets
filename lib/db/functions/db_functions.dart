import 'package:flutter/cupertino.dart';
import 'package:sample_widgets/db/model/data_model.dart';

ValueNotifier<List<StudentModel>> studentListNotifier = ValueNotifier([]);

void addStudent(StudentModel value){

  studentListNotifier.value.add(value);
  studentListNotifier.notifyListeners();
  print('data added ${value.toString}');
}