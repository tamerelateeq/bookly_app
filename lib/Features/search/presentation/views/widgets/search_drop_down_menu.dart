import 'package:bookly_app/Features/search/presentation/views_model/fetch_data_book.dart/fetch_data_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        onSelected: (value) {
          value ??= 'intitle:';
          switch (value) {
            case 'intitle:':
              BlocProvider.of<FetchDataBookCubit>(context)
                  .fetchDataBook(data: value);
              break;
            case 'inauthor:':
              BlocProvider.of<FetchDataBookCubit>(context)
                  .fetchDataBook(data: value);
              break;
            case 'subject:':
              BlocProvider.of<FetchDataBookCubit>(context)
                  .fetchDataBook(data: value);
              break;
            case 'isbn:':
              BlocProvider.of<FetchDataBookCubit>(context)
                  .fetchDataBook(data: value);
              break;
            default:
              BlocProvider.of<FetchDataBookCubit>(context)
                  .fetchDataBook(data: value);
          }
        },
        dropdownMenuEntries: [
          DropdownMenuEntry(value: 'intitle:', label: 'Name'),
          DropdownMenuEntry(value: 'inauthor:', label: 'Author'),
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
