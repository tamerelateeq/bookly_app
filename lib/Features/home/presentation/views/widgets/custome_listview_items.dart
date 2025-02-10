import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomeListviewItems extends StatelessWidget {
  const CustomeListviewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.45,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: AssetImage(AssetsData.testImage),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
