import 'package:flutter/material.dart';

class CustomeLoadingWidget extends StatelessWidget {
  const CustomeLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
