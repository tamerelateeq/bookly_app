import 'package:bookly_app/Features/home/presentation/manger/neweset_books.dart/neweset_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/neweset_body.dart';
import 'package:bookly_app/core/widgets/custome_error_widget.dart';
import 'package:bookly_app/core/widgets/custome_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewesetListView extends StatelessWidget {
  const NewesetListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewesetBooksCubit, NewesetBooksState>(
      builder: (context, state) {
        if (state is NewesetBooksSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, BookDetailsView.id);
                  },
                  child: NewesetBody(
                    bookModel: state.books[index],
                  ),
                ),
              );
            },
          );
        } else if (state is NewesetBooksFailure) {
          return Center(
              child: CustomeErrorWidget(errMassage: state.errMassage));
        } else {
          return Center(child: CustomeLoadingWidget());
        }
      },
    );
  }
}
