import 'package:flutter/material.dart';
import 'package:paira/constants/app_constants.dart';
import 'package:paira/global_widget/my_drware.dart';
import 'package:paira/models/department_details_model.dart';
import 'package:paira/models/department_models.dart';

class DepartmentView extends StatelessWidget {
  Widget build(BuildContext context) {
    List<Department> deptList = [
      Department(
        id: 1,
        name: 'CSE',
        img: 'assets/images/apple.jpg',
        deptDetils: DepartmentDetailsModel(
            id: 1,
            name: 'bng',
            title: 'Bangla one',
            dec: 'in sfsf',
            img: 'assets/images/apple.jpg'),
      ),
      Department(
        id: 2,
        name: 'Math',
        img: '',
        deptDetils: DepartmentDetailsModel(
            id: 1, name: 'eng', title: 'english one', dec: 'in sfsf', img: ''),
      ),
      Department(id: 3, name: 'Bangla', img: ''),
      Department(id: 4, name: 'English', img: ''),
      Department(id: 5, name: 'Marketing', img: ''),
      Department(id: 6, name: 'Account', img: ''),
      Department(id: 7, name: 'Management', img: ''),
    ];
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text('Departemts'),
        ),
        body: ListView.builder(
          itemCount: deptList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 150.0, vertical: 10.0),
              child: ElevatedButton(
                onPressed: () {
                  if (deptList.elementAt(index).id == 1) {
                    Department bngDept = deptList[0];
                    Navigator.pushNamed(context, AppConstant.deptDetailPage,
                        arguments: bngDept);
                  } else if (deptList.elementAt(index).id == 2) {
                    Department bngDept = deptList[1];
                    Navigator.pushNamed(context, AppConstant.deptDetailPage,
                        arguments: bngDept);
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
                child: Text(
                  '${deptList.elementAt(index).name}',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
            );
          },
        ));
  }
}
