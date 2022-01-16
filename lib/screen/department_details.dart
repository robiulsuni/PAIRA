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
            Text('${arg.deptDetils!.title}'),
            Text('${arg.deptDetils!.dec}'),
          ],
        ),
      ),
    );
  }
}
