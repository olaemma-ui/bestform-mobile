import 'package:bestform/Utils/props.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  Widget child;
  Color? background;
  Function? onPressed;
  Color? color;
  Alignment? alignment;
  AppButton(
      {required this.onPressed,
      required this.background,
      required this.child,
      this.alignment,
      this.color,
      super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        alignment: alignment,
        padding: EdgeInsets.symmetric(horizontal: 16),
        // elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        minimumSize: Size(500, 60),
        backgroundColor: background,
      ),
      onPressed: (onPressed != null)
          ? () {
              onPressed!();
            }
          : null,
      child: child,
    );
  }
}
