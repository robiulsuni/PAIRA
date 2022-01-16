import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import './home_page.dart';
import './screen/sign_in_page.dart';
import './screen/sign_up_page.dart';
import 'screen/department.dart';

Future<void> main() async {
  runApp(const MyApp());
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  FirebaseOptions get firebaseOptions => const FirebaseOptions(
        appId: '1:731783212291:android:51226d59451f5fd7658d36',
        apiKey: 'AIzaSyDCqvw7EfT5ZW0DEj6_UYitNxUU9qtfYrs',
        projectId: 'local-project-a15cb',
        messagingSenderId: '448618578101',
      );


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(primarySwatch: Colors.green),
      initialRoute: '/HomePage',
      routes: <String, WidgetBuilder>{
        "/SigninPage": (context) => SigninPage(),
        "/SignupPage": (context) => SignupPage(),
        "/HomePage": (context) => HomePage(),
        "/DepartmentView": (context) => DepartmentView(),
      },
    );
  }
}
