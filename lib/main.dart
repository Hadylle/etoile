import 'package:app/password_reset_screen.dart';
import 'package:app/splash_screen.dart';
import 'package:app/into_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:app/login.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Spalch_screen(),
        '/slide': (context) => const TestScreen(),
        '/login': (BuildContext context) => LoginScreen(),
        '/password_reset_screen': (context) => PasswordResetScreen(),
      },
    );
  }
}
