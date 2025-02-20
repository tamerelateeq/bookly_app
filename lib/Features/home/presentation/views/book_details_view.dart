import 'package:bookly_app/core/model/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/manger/relative_books_cubit/relative_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_details_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});
  static const String id = 'BookDetailsView';
  final BookModel bookModel;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<RelativeBooksCubit>(context).fetchRelativeBooks(
      widget.bookModel.volumeInfo?.categories?[0] ?? '',
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsBody(
        bookModel: widget.bookModel,
      ),
    );
  }
}
