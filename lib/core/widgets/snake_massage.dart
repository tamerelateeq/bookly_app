import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

void showSnackbar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: Styles.textStyle16,
      ),
      backgroundColor: Colors.white,
    ),
  );
}
