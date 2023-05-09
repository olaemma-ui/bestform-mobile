import 'dart:developer';

import 'package:bestform/Utils/app.ui.manager.dart';
import 'package:bestform/Utils/props.dart';
import 'package:bestform/View/Widgets/app_button.widget.dart';
import 'package:bestform/View/Widgets/app_select_button.widget.dart';
import 'package:bestform/View/Widgets/app_textfield.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProceedeSignUp extends StatefulWidget {
  const ProceedeSignUp({super.key});

  @override
  State<ProceedeSignUp> createState() => _ProceedeSignUpState();
}

class _ProceedeSignUpState extends State<ProceedeSignUp> {
  final ThemeData appUi = AppUiManager.theme(color: Props.dark);
  String? value;
  int? activeIndex;
  Map<String, bool> active = {
    'terms': false,
    'data_protection': false,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(240, 255, 255, 255),
        body: SizedBox(
          width: 500,
          child: Center(
            child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.all(16),
                child: Form(
                  child: Column(
                    children: [
                      SizedBox(height: Props.s30),
                      Text(
                        'We are nearly finished.',
                        style: appUi.textTheme.titleLarge,
                        textAlign: TextAlign.center,
                      ),

                      SizedBox(height: Props.s30),
                      AppTextField(label: 'E-Mail'),
                      SizedBox(height: Props.s14),
                      AppTextField(label: 'Phone Number'),
                      SizedBox(height: Props.s14),
                      AppTextField(label: 'Street'),
                      SizedBox(height: Props.s14),
                      Wrap(
                        spacing: 28,
                        runSpacing: 14,
                        children: [
                          SizedBox(
                              width: 150,
                              child: AppTextField(label: 'Postal Code')),
                          SizedBox(
                              width: 150, child: AppTextField(label: 'Ort')),
                          SizedBox(
                              width: 150,
                              child: AppTextField(label: 'State DE')),
                        ],
                      ),
                      SizedBox(height: Props.s14),
                      Wrap(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 80,
                            child: Column(
                              children: [
                                const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('Newsletter',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                      'Switch off the newsletter function in the settings.',
                                      style: appUi.textTheme.displayMedium),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 45,
                            child: CupertinoSwitch(
                                activeColor: Props.primary,
                                value: true,
                                onChanged: (value) {}),
                          )
                        ],
                      ),
                      // AppButton(
                      //     onPressed: () {},
                      //     background: Props.white,
                      //     alignment: Alignment.centerLeft,
                      //     child: Text(
                      //       'Birth Date',
                      //       style: appUi.textTheme.labelMedium,
                      //       textAlign: TextAlign.left,
                      //     )),
                      // SizedBox(height: Props.s8),
                      SizedBox(height: Props.s12),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Wrap(
                          spacing: MediaQuery.of(context).size.width - 335,
                          children: [
                            AppSelectButton(
                                onTap: () {
                                  setState(() {
                                    active['terms'] = !active['terms']!;
                                  });
                                },
                                value: 'Terms and Conditions',
                                active: active['terms']!),
                            AppSelectButton(
                                onTap: () {
                                  setState(() {
                                    active['data_protection'] =
                                        !active['data_protection']!;
                                  });
                                },
                                value: 'Data Protection',
                                active: active['data_protection']!),
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
                      SizedBox(height: Props.s24),
                      AppButton(
                        background: Props.primary,
                        child: Text(
                          'Further',
                          style: TextStyle(color: Props.white, fontSize: 14),
                        ),
                        onPressed: () {
                          log('ProceedeSignUp clicked');
                        },
                      )
                    ],
                  ),
                )),
          ),
        ));
  }
}
