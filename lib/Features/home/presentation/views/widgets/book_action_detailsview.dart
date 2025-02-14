import 'package:bookly_app/core/widgets/custome_button.dart';
import 'package:flutter/material.dart';

class BookActions extends StatelessWidget {
  const BookActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [CustomeButton()],
    );
  }
}
