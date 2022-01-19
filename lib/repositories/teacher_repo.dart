import 'package:flutter/services.dart';
import 'package:paira/models/teacher_model.dart';

class TeacherRepo {
  static Future<List<TeacherModel>> getTeacherList() async {
    final response =
        await rootBundle.loadString('assets/json/teacher_list_data.json');
    if (response == null) {
      return [];
    } else {
      List<TeacherModel> users = teacherModelFromJson(response);
      return users;
    }
  }
}
