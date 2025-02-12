import 'package:bookly_app/Features/home/presentation/views/widgets/custome_details_appbar.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomeDetailsAppbar(),
      ],
    );
  }
}
