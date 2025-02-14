import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton(
      {super.key,
      required this.colorButton,
      required this.colorText,
      required this.borderRadius,
      required this.text});
  final Color colorButton;
  final Color colorText;
  final BorderRadiusGeometry borderRadius;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: colorButton,
        ),
        child: Center(
          child: Text(
            text,
            style: Styles.textStyle16
                .copyWith(color: colorText, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
