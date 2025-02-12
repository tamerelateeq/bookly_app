import 'package:flutter/material.dart';

class CustomeDetailsAppbar extends StatelessWidget {
  const CustomeDetailsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 20, top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Close Icon
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.close),
          ),

          // Shoping Icon
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_sharp),
          )
        ],
      ),
    );
  }
}
