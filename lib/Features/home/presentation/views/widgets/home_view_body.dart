import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_body.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_listview.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custome_appbar.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // customer App Bar
        CustomeAppbar(),
        // space
        SizedBox(
          height: 20,
        ),
        // add list view book images
        Padding(
          padding: EdgeInsets.only(left: 16),
          child: BookListview(),
        ),
        // space
        SizedBox(
          height: 50,
        ),
        // add Head Title
        Text(
          'Best Sellar',
          style: Styles.textStyle18,
        ),
        // add space
        SizedBox(
          height: 20,
        ),
        // add best Sellar list view
        BestSellarBody()
      ],
    );
  }
}
