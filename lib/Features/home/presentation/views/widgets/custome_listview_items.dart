import 'package:bookly_app/core/widgets/custome_error_widget.dart';
import 'package:bookly_app/core/widgets/custome_loading_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomeItems extends StatelessWidget {
  const CustomeItems({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 0.6,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.fill,
          progressIndicatorBuilder: (context, url, progress) =>
              CustomeLoadingWidget(),
          errorWidget: (context, url, error) => Icon(Icons.error_outline),
        ),
      ),
    );
  }
}
