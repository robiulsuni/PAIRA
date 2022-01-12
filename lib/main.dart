import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import './home_page.dart';
import './screen/sign_in_page.dart';
import './screen/sign_up_page.dart';

Future<void> main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(primarySwatch: Colors.green),
      initialRoute: '/SigninPage',
      routes: <String, WidgetBuilder>{
        "/home_page": (context) => HomePage(),
        "/sign_in_page": (context) => SigninPage(),
        "/sign_up_page": (context) => SignupPage(),
      },
    );
  }
}
