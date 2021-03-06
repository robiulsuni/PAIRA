import 'package:paira/constants/app_constants.dart';
import 'package:paira/screen/department.dart';
import 'package:paira/screen/department_details.dart';
import 'package:paira/screen/doctors_view.dart';
import 'package:paira/screen/sign_in_page.dart';
import 'package:paira/screen/sign_up_page.dart';
import 'package:paira/screen/teacher_view.dart';

import '../home_page.dart';

class AppRoutes {
  static final myInitRoute = AppConstant.homePage;
  static final routes = {
    AppConstant.homePage: (context) => HomePage(),
    AppConstant.signinPage: (context) => SigninPage(),
    AppConstant.signupPage: (context) => SignupPage(),
    AppConstant.doctorPage: (context) => DoctorsView(),
    AppConstant.deptView: (context) => DepartmentView(),
    AppConstant.deptDetailPage: (context) => DepartmentDetails(),
    AppConstant.teacherPage: (context) => TeacherView(),
  };
}
