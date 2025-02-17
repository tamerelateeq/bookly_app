import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomeErrorWidget extends StatelessWidget {
  const CustomeErrorWidget({super.key, required this.errMassage});
  final String errMassage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMassage,
        style: Styles.textStyle16,
        textAlign: TextAlign.center,
      ),
    );
  }
}
