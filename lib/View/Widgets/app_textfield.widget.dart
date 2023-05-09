import 'package:bestform/Utils/props.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  String? label;
  String? Function(String?)? validator;
  bool? hidden;
  bool? readOnly;
  Function? onTap;
  TextEditingController? controller;
  Color? color;
  bool toggle;
  AppTextField(
      {required this.label,
      this.validator,
      this.controller,
      this.hidden,
      this.readOnly,
      this.color,
      this.onTap,
      this.toggle = false,
      super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: (onTap != null)
          ? () {
              onTap!();
            }
          : null,
      controller: controller,
      readOnly: readOnly ?? false,
      obscureText: hidden ?? false,
      validator: (value) {
        validator!(value);
      },
      style: TextStyle(color: Props.gray),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(22.0),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide.none),
        labelText: label,
        labelStyle: const TextStyle(fontSize: 14),
        filled: true,
        fillColor: Props.white,
      ),
    );
  }
}

// Ink(
//       width: 500,
//       height: 60,
//       padding: const EdgeInsets.symmetric(horizontal: 12),
//       decoration: BoxDecoration(
//           color: Props.white, borderRadius: BorderRadius.circular(12)),
//       child: TextFormField(
//         controller: controller,
//         obscureText: hidden ?? false,
//         validator: (value) {
//           validator!(value);
//         },
//         style: TextStyle(color: Props.gray),
//         decoration: InputDecoration(border: InputBorder.none, labelText: label),
//       ),
//     );