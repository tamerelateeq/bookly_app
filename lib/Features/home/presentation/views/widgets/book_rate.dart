import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BooksRate extends StatelessWidget {
  const BooksRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Icons
        const Icon(
          Icons.star,
          color: Color(0xffffdd4f),
        ),
        //space
        SizedBox(width: 6.3),
        // Rate Text
        Text(
          '4.8',
          style: Styles.textStyle14,
        ),
        //space
        SizedBox(width: 6.3),
        // Count Read
        Text(
          '(2390)',
          style: Styles.textStyle14.copyWith(color: Color(0xff888590)),
        )
      ],
    );
  }
}
