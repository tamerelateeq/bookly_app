import 'package:bookly_app/core/widgets/cutome_textfiled_search.dart';
import 'package:flutter/material.dart';

class SearchAppbar extends StatelessWidget {
  const SearchAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20, top: 60),
      child: CustomeTextFieldSearch(
        hintText: 'Search ...',
        prefixIcon: Icons.arrow_back,
        suffixIcon: Icons.search,
      ),
    );
  }
}
