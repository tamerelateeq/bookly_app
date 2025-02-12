import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellarBody extends StatelessWidget {
  const BestSellarBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
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
          )
          // add the text body
          ,
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 16),
                child: Text(
                  'Harry Potter and the Goblet of Fire',
                  style: Styles.titleBest,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
