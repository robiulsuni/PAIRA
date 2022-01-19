import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:paira/models/doctor_model.dart';

class DoctorRepo {
  static Future<List<DoctorModel>> getDoctorList() async {
    final respose =
        await rootBundle.loadString('assets/json/teacher_list.json');
    if (respose != null) {
      List<dynamic> doctors = await json.decode(respose);
      List<DoctorModel> doctorList =
          doctors.map((e) => DoctorModel.fromJson(e)).toList();
      return doctorList;
    } else {
      return [];
    }
  }
}
