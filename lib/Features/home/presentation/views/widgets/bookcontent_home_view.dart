import 'package:bookly_app/Features/home/presentation/views/widgets/book_rate.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookContentText extends StatelessWidget {
  const BookContentText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title text
        SizedBox(
          width: MediaQuery.of(context).size.width * .5,
          child: Text(
            'Harry Potter and the Goblet of Fire',
            style: Styles.textStyle20.copyWith(fontFamily: kGTSectraFineText),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        // space
        const SizedBox(height: 3),
        // Sub Title
        Text(
          'J.K. Rowling',
          style: Styles.textStyle14.copyWith(color: Color(0xffb7b5bc)),
        ),
        // space
        const SizedBox(height: 3),
        // Price & Rating
        Row(
          children: [
            // Price
            Text(
              '199£',
              style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
            ),
            //space
            const Spacer(),
            // Book Rating
            BooksRate()
          ],
        )
      ],
    );
  }
}
