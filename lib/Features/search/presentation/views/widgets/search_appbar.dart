import 'package:bookly_app/Features/search/presentation/views/widgets/search_drop_down_menu.dart';
import 'package:bookly_app/Features/search/presentation/views_model/fetch_data_book.dart/fetch_data_book_cubit.dart';
import 'package:bookly_app/core/widgets/cutome_textfiled_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SearchAppbar extends StatelessWidget {
  const SearchAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5, top: 60, bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.white),
        ),
        child: Row(
          children: [
            // Icon Button for Backword page
            SizedBox(
              width: 35,
              child: IconButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back),
              ),
            ),

            // Menu for choose the type of serach
            SizedBox(
              width: 135,
              child: SearchDropDownMenu(),
            ),
            // space

            // Search Text
            Expanded(
              child: CustomeTextFieldSearch(
                onSubmited: (value) {
                  BlocProvider.of<FetchDataBookCubit>(context)
                      .fetchSearchData(value);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  OutlineInputBorder buildBulder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: Colors.white),
    );
  }
}
