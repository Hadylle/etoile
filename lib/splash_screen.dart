import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
class Spalch_screen extends StatefulWidget{
  const Spalch_screen ({ Key? key}):super (key:key);

  @override
  State<Spalch_screen> createState() => _Spalch_screenState();
}

class _Spalch_screenState extends State<Spalch_screen> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.network(
          'https://cdn4.iconfinder.com/data/icons/logos-brands-5/24/flutter-512.png'),
      title: const Text(
        "Title",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      showLoader: true,
      loadingText: const Text("Loading..."),
      navigator: '/slide',
      durationInSeconds: 3,
    );
  }
}