import 'dart:developer';

import 'package:bestform/Utils/app.ui.manager.dart';
import 'package:bestform/Utils/props.dart';
import 'package:bestform/View/Widgets/app_button.widget.dart';
import 'package:bestform/View/Widgets/app_select_button.widget.dart';
import 'package:bestform/View/Widgets/app_textfield.widget.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final ThemeData appUi = AppUiManager.theme(color: Props.dark);
  String? value;
  int? activeIndex;
  List<bool> active = [false, false];
  // Map<String, bool> active = {
  //   'terms': false,
  //   'data_protection': false,
  // };
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
                    SizedBox(height: Props.s30),
                    Text(
                      'Tell us something about yourself!',
                      style: appUi.textTheme.titleLarge,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: Props.s30),
                    CircleAvatar(
                      backgroundColor: Props.light,
                      radius: 70,
                      backgroundImage: AssetImage('asset/avatar.png'),
                    ),
                    SizedBox(height: Props.s30),
                    AppTextField(label: 'First Name'),
                    SizedBox(height: Props.s14),
                    AppTextField(label: 'Last Name'),
                    SizedBox(height: Props.s14),
                    AppTextField(
                      label: 'Birth Date',
                      readOnly: true,
                      onTap: () {},
                    ),

                    SizedBox(height: Props.s12),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Wrap(
                        spacing: MediaQuery.of(context).size.width - 335,
                        children: [
                          AppSelectButton(
                              onTap: () {
                                setState(() {
                                  active[0] = true;
                                  active[1] = false;
                                });
                                print('active[0] = $active');
                              },
                              value: 'Male',
                              active: active[0]),
                          AppSelectButton(
                              onTap: () {
                                setState(() {
                                  active[0] = false;
                                  active[1] = true;
                                });
                                print('active[1] = $active');
                              },
                              value: 'Female',
                              active: active[1]),
                        ],
                      ),
                    ),
                    // Align(
                    //   alignment: Alignment.centerLeft,
                    //   child: AppSwitcher(
                    //     value: value,
                    //     onTap: (){
                    //       setState(() {
                    //         activeIndex = items.indexOf(e);
                    //         value = e;
                    //       });
                    //     },
                    //     items: [
                    //     'Terms and Conditions',
                    //     'data protection',
                    //     'OPO sbgsbsg'
                    //   ]),
                    // ),
                    SizedBox(height: Props.s50),
                    AppButton(
                      background: Props.primary,
                      child: Text(
                        'Further',
                        style: TextStyle(color: Props.white, fontSize: 14),
                      ),
                      onPressed: () {
                        log('SignUp clicked');
                      },
                    )
                  ],
                ),
              )),
        ));
  }
}
