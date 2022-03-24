import 'package:flutter/material.dart';
import 'package:todo_app/home_page.dart';
import 'package:todo_app/routes.dart';
import 'package:todo_app/splash_screen.dart';
import 'package:todo_app/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TODO",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: const SplashScreen(),
      initialRoute: MyRoutes.loginroute,
      routes: {
        MyRoutes.homeroute: (context) => const HomePage(),
        MyRoutes.loginroute: (context) => const LoginPage(),
      },
    );
  }
}
