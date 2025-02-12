import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_listview.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_listview.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custome_appbar.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // customer App Bar
            CustomeAppbar(),
            // add list view book images
            BookListview(),
            // space
            SizedBox(
              height: 50,
            ),
            // add Head Title
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'Best Sellar',
                style: Styles.textStyle18,
              ),
            ),
          ],
        ),
      ),
      // add Best Selar List
      const SliverToBoxAdapter(
        child: BestSellarListView(),
      )
    ]);
  }
}
