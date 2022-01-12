import 'package:flutter/material.dart';

import './home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(primarySwatch: Colors.green),
      initialRoute: '/home_page',
      routes: <String, WidgetBuilder>{
        "/home_page": (context) => HomePage(),
      },
    );
  }
}
