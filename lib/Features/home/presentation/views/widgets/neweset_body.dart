import 'package:bookly_app/Features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/bookcontent_home_view.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NewesetBody extends StatelessWidget {
  const NewesetBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          // add photo
          AspectRatio(
              aspectRatio: 2.4 / 4,
              child: CachedNetworkImage(
                  imageUrl: bookModel.volumeInfo!.imageLinks!.thumbnail!)),
          // add space
          const SizedBox(
            width: 30,
          ),
          // add the text body
          Expanded(
            child: BookContentText(),
          )
        ],
      ),
    );
  }
}
