import 'package:bookly_app/Features/search/presentation/views/widgets/search_appbar.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // add app bar
        SearchAppbar(),
        //
      ],
    );
  }
}
