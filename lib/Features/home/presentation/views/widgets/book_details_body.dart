import 'package:bookly_app/Features/home/presentation/views/widgets/bookcontent_details_view.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/bookcontent_home_view.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custome_details_appbar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custome_listview_items.dart';
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
        // Title description text
        BookDetails()
      ],
    );
  }
}
