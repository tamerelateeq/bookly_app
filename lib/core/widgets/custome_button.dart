import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Text(
        'Free',
        style: Styles.textStyle16.copyWith(color: Colors.black),
      ),
    );
  }
}
