import 'package:bookly_app/Features/home/presentation/views/widgets/book_rate.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellarBody extends StatelessWidget {
  const BestSellarBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          // add photo
          AspectRatio(
            aspectRatio: 2.4 / 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(AssetsData.testImage),
                    fit: BoxFit.fill,
                  )),
            ),
          ),
          // add space
          const SizedBox(
            width: 30,
          ),
          // add the text body
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title text
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    'Harry Potter and the Goblet of Fire',
                    style: Styles.textStyle20
                        .copyWith(fontFamily: kGTSectraFineText),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                // space
                const SizedBox(height: 3),
                // Sub Title
                Text(
                  'J.K. Rowling',
                  style: Styles.textStyle14.copyWith(color: Color(0xffb7b5bc)),
                ),
                // space
                const SizedBox(height: 3),
                // Price & Rating
                Row(
                  children: [
                    // Price
                    Text(
                      '199£',
                      style: Styles.textStyle20
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    //space
                    Spacer(),
                    // Book Rating
                    BooksRate()
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
