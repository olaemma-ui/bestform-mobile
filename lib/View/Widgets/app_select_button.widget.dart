import 'package:bestform/Utils/app.ui.manager.dart';
import 'package:bestform/Utils/props.dart';
import 'package:flutter/material.dart';

// class AppSwitcher extends StatelessWidget {
//   List<String> items = [];
//   int? activeIndex;
//   String? value;
//   bool? toggleAble = false;
//   Function? onTap;
//   AppSwitcher({this.value, this.toggleAble, required this.onTap, required this.items, super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Wrap(
//       // spacing: 12,
//       alignment: WrapAlignment.spaceBetween,
//       runAlignment: WrapAlignment.end,
//       runSpacing: 12,
//       spacing: 12,

//       children: items
//           .map((e) => )
//           .toList(),
//     );
//   }
// }

class AppSelectButton extends StatelessWidget {
  bool active = false;
  Function? onTap;
  String? value;
  AppSelectButton(
      {required this.onTap,
      required this.value,
      required this.active,
      super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (onTap != null)
            ? () {
                onTap!();
              }
            : null,
        child: Ink(
            width: 150,
            height: 60,
            padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
            decoration: BoxDecoration(
                color: Props.white,
                boxShadow: [
                  BoxShadow(
                      color: Props.shadow, spreadRadius: 0, blurRadius: 20)
                ],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                    width: 2,
                    color: (active) ? Props.primary : Props.transparent)),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(value ?? '...',
                  style: AppUiManager.theme(color: Props.gray)
                      .textTheme
                      .labelMedium),
            )));
  }
}
