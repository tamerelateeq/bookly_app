import 'package:bookly_app/Features/home/presentation/views/widgets/book_action_detailsview.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/bookcontent_details_view.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custome_details_appbar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custome_listview_items.dart';
import 'package:bookly_app/core/utils/styles.dart';

import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Custome App Bar
        CustomeDetailsAppbar(),
        // Image Items
        SizedBox(
          height: MediaQuery.of(context).size.width * 0.8,
          child: CustomeItems(),
        ),
        //space
        SizedBox(height: 43),
        // Title description text
        BookDetails(),
        //Spce
        SizedBox(height: 38),
        // add Button for price & Free
        const BookActions(),
        //Spce
        SizedBox(height: 50),
        // text
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 38),
            child: Text(
              'You can also like',
              style: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        //
      ],
    );
  }
}
