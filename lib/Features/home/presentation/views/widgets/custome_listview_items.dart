import 'package:flutter/material.dart';

class CustomeItems extends StatelessWidget {
  const CustomeItems({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.6,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
