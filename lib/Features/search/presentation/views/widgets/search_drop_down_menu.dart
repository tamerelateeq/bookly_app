import 'package:flutter/material.dart';

class SearchDropDownMenu extends StatelessWidget {
  const SearchDropDownMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
            right: BorderSide(color: Color.fromARGB(255, 214, 213, 213))),
      ),
      child: DropdownMenu<String>(
        dropdownMenuEntries: [
          DropdownMenuEntry(value: 'intitle:', label: 'Name'),
          DropdownMenuEntry(value: 'inauthor', label: 'Author'),
          DropdownMenuEntry(value: 'subject:', label: 'Category'),
          DropdownMenuEntry(value: 'isbn:', label: 'Isbn')
        ],
        inputDecorationTheme: const InputDecorationTheme(
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
