import 'package:bookly_app/core/model/book_model/book_model.dart';
import 'package:bookly_app/core/utils/function/launch_url.dart';
import 'package:bookly_app/core/widgets/custome_alert_dialog.dart';
import 'package:bookly_app/core/widgets/custome_button.dart';
import 'package:bookly_app/core/widgets/snake_massage.dart';
import 'package:flutter/material.dart';

class BookActions extends StatelessWidget {
  const BookActions({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 38, left: 38),
      child: Row(
        children: [
          Expanded(
            child:
                // button for price
                CustomeButton(
              onTap: () async {
                cutomeLaunchUrl(context, bookModel.volumeInfo!.previewLink!);
              },
              colorButton: Colors.white,
              colorText: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                topLeft: Radius.circular(16),
              ),
              text: 'Free',
            ),
          ),

          // Button for free
          Expanded(
            child: CustomeButton(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => CustomAlertDialog(
                    title: 'Notes',
                    content: "Please Download Adobe Digital Editions program",
                    confirmText: 'Ok',
                    cancelText: 'Cancel',
                    onConfirm: () {
                      cutomeLaunchUrl(
                          context,
                          bookModel
                              .accessInfo!.pdf!.acsTokenLink!); // Close dialog
                      Navigator.pop(context);
                    },
                    onCancel: () {
                      Navigator.pop(context); // Close dialog
                    },
                  ),
                );
              },
              colorButton: Color(0xffef8262),
              colorText: Colors.white,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              text: 'Download',
            ),
          ),
        ],
      ),
    );
  }
}
