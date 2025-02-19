import 'package:bookly_app/core/model/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/bookcontent_home_view.dart';
import 'package:bookly_app/core/widgets/custome_loading_widget.dart';
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
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: AspectRatio(
              aspectRatio: 2.6 / 4,
              child: CachedNetworkImage(
                imageUrl: bookModel.volumeInfo!.imageLinks!.thumbnail!,
                fit: BoxFit.fill,
                placeholder: (context, url) => CustomeLoadingWidget(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
          ),
          // add space
          const SizedBox(
            width: 30,
          ),
          // add the text body
          Expanded(
            child: BookContentText(
              bookModel: bookModel,
            ),
          )
        ],
      ),
    );
  }
}
