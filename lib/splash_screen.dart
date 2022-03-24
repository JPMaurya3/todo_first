import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Colors.green,
        body: Center(
          child: Column(
            children: [
              //logo here
              Image.asset(
                "assets/images/gloify.png",
                height: 300,
              ),
              const SizedBox(
                height: 10,
              ),
              const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.white),
              )
            ],
          ),
        ));
  }
}
