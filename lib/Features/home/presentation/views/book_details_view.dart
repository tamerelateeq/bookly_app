import 'package:bookly_app/Features/home/presentation/views/widgets/book_details_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});
  static const String id = 'BookDetailsView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsBody(),
    );
  }
}
