import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BooksRate extends StatelessWidget {
  const BooksRate({super.key, required this.pageCount, required this.language});
  final String language;
  final int pageCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Icons
        const Icon(
          Icons.book_online,
          color: Color(0xffffdd4f),
        ),
        //space
        SizedBox(width: 7),
        // Rate Text
        Text(
          '$pageCount',
          style: Styles.textStyle14,
        ),
        //space
        SizedBox(width: 9),
        // Count Read
        Row(
          children: [
            const Icon(
              Icons.language,
              size: 16,
            ),
            SizedBox(width: 2),
            Text(
              language,
              style: Styles.textStyle14.copyWith(color: Color(0xff888590)),
            ),
          ],
        )
      ],
    );
  }
}
