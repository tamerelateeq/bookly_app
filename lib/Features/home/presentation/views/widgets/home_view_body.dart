import 'package:bookly_app/Features/home/presentation/views/widgets/book_listview.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custome_appbar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // customer App Bar
        CustomeAppbar(),
        // space
        SizedBox(
          height: 20,
        ),
        // add list view book images
        BookListview(),
      ],
    );
  }
}
