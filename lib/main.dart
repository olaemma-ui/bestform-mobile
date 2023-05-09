import 'package:bestform/Utils/app.ui.manager.dart';
import 'package:bestform/Utils/props.dart';
import 'package:bestform/View/Pages/Login/login.ui.dart';
import 'package:bestform/View/Pages/SIgnup/signup.ui.dart';
import 'package:bestform/View/Pages/SIgnup/signup_2.ui.dart';
import 'package:bestform/View/Pages/SIgnup/signup_set_password.ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppUiManager.theme(color: Props.dark),
      initialRoute: '/',
      routes: {
        // '/': (context) => Login(),
        // '/': (context) => const SignUp(),
        // '/': (context) => const ProceedeSignUp(),
        '/': (context) => const FinishSignUp(),
      },
    );
  }
}
