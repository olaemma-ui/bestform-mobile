import 'dart:developer';

import 'package:bestform/Utils/app.ui.manager.dart';
import 'package:bestform/Utils/props.dart';
import 'package:bestform/View/Widgets/app_button.widget.dart';
import 'package:bestform/View/Widgets/app_textfield.widget.dart';
import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final ThemeData appUi = AppUiManager.theme(color: Props.dark);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(240, 255, 255, 255),
        body: Center(
          child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(16),
              child: Form(
                child: Column(
                  children: [
                    Text(
                      'Hello Again!',
                      style: appUi.textTheme.titleLarge,
                    ),
                    SizedBox(height: Props.s30),
                    AppTextField(label: 'E-Mail Address'),
                    SizedBox(height: Props.s14),
                    AppTextField(
                      label: 'Password',
                      hidden: true,
                    ),
                    // SizedBox(height: Props.s8),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        child: Text(
                          'Forgot password?',
                          style: appUi.textTheme.labelMedium,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(height: Props.s24),
                    AppButton(
                      background: Props.primary,
                      child: Text(
                        'Login',
                        style: TextStyle(color: Props.white, fontSize: 14),
                      ),
                      onPressed: () {
                        log('login clicked');
                      },
                    )
                  ],
                ),
              )),
        ));
  }
}