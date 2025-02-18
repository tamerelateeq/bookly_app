import 'package:bookly_app/Features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/manger/relative_books_cubit/relative_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_action_detailsview.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/bookcontent_details_view.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custome_details_appbar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custome_listview_items.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/details_listview.dart';

import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custome_error_widget.dart';
import 'package:bookly_app/core/widgets/custome_loading_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RelativeBooksCubit, RelativeBooksState>(
      builder: (context, state) {
        if (state is RelativeBooksSuccess) {
          return Column(
            children: [
              // Custome App Bar
              CustomeDetailsAppbar(),
              // Image Items
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                child: CustomeItems(
                  imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ?? '',
                ),
              ),
              //space
              const SizedBox(height: 43),
              // Title description text
              BookDetails(
                bookModel: bookModel,
              ),
              //Spce
              const SizedBox(height: 38),
              // add Button for price & Free
              BookActions(
                bookModel: bookModel,
              ),
              //Spce
              SizedBox(height: 50),
              // text
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 38),
                  child: Text(
                    'You can also like',
                    style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              //Spce
              const SizedBox(height: 20),
              // List View
              DetailsListview(
                bookModel: bookModel,
              ),
              //Spce
              const SizedBox(height: 10),
            ],
          );
        } else if (state is RelativeBooksFailure) {
          return CustomeErrorWidget(errMassage: state.errMassage);
        } else {
          return const CustomeLoadingWidget();
        }
      },
    );
  }
}
