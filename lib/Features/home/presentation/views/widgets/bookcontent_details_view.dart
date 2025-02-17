import 'package:bookly_app/Features/home/presentation/views/widgets/book_rate.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Title text
        SizedBox(
          width: MediaQuery.of(context).size.width * .5,
          child: Text(
            'The Jungle Book',
            style: Styles.textStyle30,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        // space
        const SizedBox(height: 12),
        // Sub Title
        Text(
          'J.K. Rowling',
          style: Styles.textStyle18.copyWith(
            color: Color(0xffb7b5bc),
            fontStyle: FontStyle.italic,
          ),
        ),
        // space
        const SizedBox(height: 18),
        //  Rating
        BooksRate(
          pageCount: 662,
          language: '25/2/2025',
        )
      ],
    );
  }
}
