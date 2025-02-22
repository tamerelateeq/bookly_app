import 'package:bookly_app/Features/search/presentation/views/widgets/search_appbar.dart';
import 'package:bookly_app/Features/search/presentation/views/widgets/search_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // add app bar
        SearchAppbar(),
        // add Head Title
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
        ),
        //space
        const SizedBox(height: 10),

        // add list view body
        Expanded(
          child: SearchListView(),
        ),
      ],
    );
  }
}
