import 'package:bookly_app/Features/home/presentation/manger/relative_books_cubit/relative_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custome_listview_items.dart';
import 'package:bookly_app/core/model/book_model/book_model.dart';
import 'package:bookly_app/core/widgets/custome_error_widget.dart';
import 'package:bookly_app/core/widgets/custome_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsListview extends StatelessWidget {
  const DetailsListview({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RelativeBooksCubit, RelativeBooksState>(
      builder: (context, state) {
        if (state is RelativeBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.14,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: CustomeItems(
                    imageUrl:
                        state.books[index].volumeInfo?.imageLinks?.thumbnail ??
                            '',
                  ),
                );
              },
            ),
          );
        } else if (state is RelativeBooksFailure) {
          return Center(
              child: CustomeErrorWidget(errMassage: state.errMassage));
        } else {
          return const CustomeLoadingWidget();
        }
      },
    );
  }
}
