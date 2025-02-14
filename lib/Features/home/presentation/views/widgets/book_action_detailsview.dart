import 'package:bookly_app/core/widgets/custome_button.dart';
import 'package:flutter/material.dart';

class BookActions extends StatelessWidget {
  const BookActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child:
              // button for price
              CustomeButton(
            colorButton: Colors.white,
            colorText: Colors.black,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              topLeft: Radius.circular(16),
            ),
            text: '19.99€',
          ),
        ),

        // Button for free
        Expanded(
          child: CustomeButton(
            colorButton: Color(0xffef8262),
            colorText: Colors.white,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            text: 'Free preview',
          ),
        ),
      ],
    );
  }
}
