import 'package:bookly_app/Features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_rate.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Title text
        SizedBox(
          width: MediaQuery.of(context).size.width * .5,
          child: Text(
            bookModel.volumeInfo!.title!,
            style: Styles.textStyle30,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        // space
        const SizedBox(height: 12),
        // Sub Title
        Text(
          bookModel.volumeInfo?.authors?[0] ?? 'Not found Authors',
          style: Styles.textStyle18.copyWith(
            color: Color(0xffb7b5bc),
            fontStyle: FontStyle.italic,
          ),
        ),
        // space
        const SizedBox(height: 18),
        //  Rating
        BooksRate(
          pageCount: bookModel.volumeInfo?.pageCount ?? 000,
          language: bookModel.volumeInfo?.publishedDate ?? '',
        )
      ],
    );
  }
}
