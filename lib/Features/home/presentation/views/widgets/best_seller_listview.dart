import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_body.dart';
import 'package:flutter/material.dart';

class BestSellarListView extends StatelessWidget {
  const BestSellarListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: BestSellarBody(),
        );
      },
    );
  }
}
