import 'package:bookly_app/Features/home/presentation/views/widgets/neweset_body.dart';
import 'package:bookly_app/Features/search/presentation/views_model/fetch_data_book.dart/fetch_data_book_cubit.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/widgets/custome_error_widget.dart';
import 'package:bookly_app/core/widgets/custome_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchDataBookCubit, FetchDataBookState>(
      builder: (context, state) {
        if (state is FetchDataBookSuccess) {
          return ListView.builder(
            itemCount: state.books.length,
            padding: const EdgeInsets.only(right: 20, left: 20),
            itemBuilder: (context, index) {
              final book = state.books[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: GestureDetector(
                  onTap: () {
                    GoRouter.of(context)
                        .push(AppRouter.kBookDetailsView, extra: book);
                  },
                  child: NewesetBody(
                    bookModel: book,
                  ),
                ),
              );
            },
          );
        } else if (state is FetchDataBookLoading) {
          return Center(child: CustomeLoadingWidget());
        } else if (state is FetchDataBookFailure) {
          return CustomeErrorWidget(errMassage: state.errMassage);
        } else {
          return const Center(
            child:
                CustomeErrorWidget(errMassage: 'Start searching for books...'),
          );
        }
      },
    );
  }
}
