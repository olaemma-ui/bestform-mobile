import 'dart:developer';

import 'package:bestform/Utils/app.ui.manager.dart';
import 'package:bestform/Utils/props.dart';
import 'package:bestform/View/Widgets/app_button.widget.dart';
import 'package:bestform/View/Widgets/app_textfield.widget.dart';
import 'package:flutter/material.dart';

class FinishSignUp extends StatefulWidget {
  const FinishSignUp({super.key});

  @override
  State<FinishSignUp> createState() => _FinishSignUpState();
}

class _FinishSignUpState extends State<FinishSignUp> {
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
                      'Just one last step.',
                      style: appUi.textTheme.titleLarge,
                    ),
                    SizedBox(height: Props.s12),
                    Text(
                      'Please enter your own password so that you can log in next time.',
                      style: appUi.textTheme.displayMedium,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: Props.s30),
                    AppTextField(
                      label: 'Your Password',
                      hidden: true,
                    ),
                    SizedBox(height: Props.s14),
                    AppTextField(
                      label: 'Retype Your Password',
                      hidden: true,
                    ),
                    // SizedBox(height: Props.s8),
                    SizedBox(height: Props.s24),
                    AppButton(
                      background: Props.primary,
                      child: Text(
                        'Finish Now',
                        style: TextStyle(color: Props.white, fontSize: 14),
                      ),
                      onPressed: () {
                        log('FinishSignUp clicked');
                      },
                    )
                  ],
                ),
              )),
        ));
  }
}
