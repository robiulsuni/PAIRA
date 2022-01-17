import 'package:flutter/material.dart';
import 'package:paira/models/department_models.dart';

class DepartmentDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Department arg = ModalRoute.of(context)!.settings.arguments as Department;
    return Scaffold(
      appBar: AppBar(
        title: Text('DepartmentDetails'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('${arg.name}'),
            SizedBox(height: 10.0),
            Text('${arg.deptDetils!.title}'),
            SizedBox(height: 10.0),
            Text('${arg.deptDetils!.dec}'),
          ],
        ),
      ),
    );
  }
}
