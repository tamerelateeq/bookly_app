import 'package:bookly_app/Features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custome_listview_items.dart';
import 'package:bookly_app/core/widgets/custome_error_widget.dart';
import 'package:bookly_app/core/widgets/custome_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookListview extends StatelessWidget {
  const BookListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.31,
            child: ListView.builder(
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: CustomeItems(
                        imageUrl: state
                            .books[index].volumeInfo!.imageLinks!.thumbnail!),
                  );
                }),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomeErrorWidget(errMassage: state.errMassage);
        } else {
          return CustomeLoadingWidget();
        }
      },
    );
  }
}
