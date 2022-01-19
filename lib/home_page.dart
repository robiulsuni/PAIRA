import 'package:flutter/material.dart';
import 'package:paira/constants/app_constants.dart';
import './global_widget/my_drware.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MyDrawer(),
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text('HomePage'),
        backgroundColor: Colors.greenAccent.shade400,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: _customButton(
                    context: context,
                    name: 'Computer Technology',
                    color: Colors.greenAccent.shade400,
                    iconData: Icons.computer,
                    onTab: () {
                      Navigator.pushNamed(context, AppConstant.deptView);
                    },
                  ),
                ),
                Expanded(
                  child: _customButton(
                    context: context,
                    name: 'Architecture & Interior Design Technology',
                    color: Colors.greenAccent.shade400,
                    iconData: Icons.architecture,
                    onTab: () {
                      Navigator.pushNamed(context, AppConstant.doctorPage);
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: _customButton(
                    context: context,
                    name: 'Teacher Details',
                    color: Colors.greenAccent.shade400,
                    iconData: Icons.electrical_services,
                    onTab: () {
                      Navigator.pushNamed(context, AppConstant.teacherPage);
                    },
                  ),
                ),
                Expanded(
                  child: _customButton(
                    context: context,
                    name: 'Refrigeration & Air-conditioning Technology',
                    color: Colors.greenAccent.shade400,
                    iconData: Icons.ac_unit,
                    onTab: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _customButton({
    BuildContext? context,
    @required Color? color,
    @required String? name,
    @required IconData? iconData,
    @required VoidCallback? onTab,
  }) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        // width: MediaQuery.of(context!).size.width * .44,
        height: 120.0,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 50.0,
            ),
            Text(
              '$name',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
