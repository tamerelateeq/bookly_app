import 'package:flutter/material.dart';

class SearchDropDownMenu extends StatelessWidget {
  const SearchDropDownMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      dropdownMenuEntries: [
        DropdownMenuEntry(value: 'intitle:', label: 'Name'),
        DropdownMenuEntry(value: 'inauthor', label: 'Author'),
        DropdownMenuEntry(value: 'subject:', label: 'category'),
        DropdownMenuEntry(value: 'isbn:', label: 'Isbn')
      ],
    );
  }
}
