import 'package:bookly_app/Features/home/presentation/views/widgets/custome_listview_items.dart';
import 'package:flutter/material.dart';

class BookListview extends StatelessWidget {
  const BookListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.31,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 6),
              child: CustomeListviewItems(),
            );
          }),
    );
  }
}
