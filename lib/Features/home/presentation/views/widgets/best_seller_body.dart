import 'package:bookly_app/Features/home/presentation/views/widgets/bookcontent_home_view.dart';
import 'package:bookly_app/core/utils/assets.dart';
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
            child: BookContentText(),
          )
        ],
      ),
    );
  }
}
