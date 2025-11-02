import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomImageWidget extends StatelessWidget {
  final String? imagePath;
  final double? height;
  final double? width;
  final BoxFit fit;
  final String? placeholder;

  const CustomImageWidget({
    super.key,
    this.imagePath,
    this.height,
    this.width,
    this.fit = BoxFit.cover,
    this.placeholder,
  });

  @override
  Widget build(BuildContext context) {
    if (imagePath == null || imagePath!.isEmpty) {
      return Container(
        height: height,
        width: width,
        color: Colors.grey[300],
        child: const Icon(Icons.image, color: Colors.grey),
      );
    }

    if (imagePath!.startsWith('http')) {
      return CachedNetworkImage(
        imageUrl: imagePath!,
        height: height,
        width: width,
        fit: fit,
        placeholder: (context, url) => Container(
          color: Colors.grey[300],
          child: const Center(child: CircularProgressIndicator()),
        ),
        errorWidget: (context, url, error) => Container(
          color: Colors.grey[300],
          child: const Icon(Icons.error),
        ),
      );
    }

    return Image.asset(
      imagePath!,
      height: height,
      width: width,
      fit: fit,
      errorBuilder: (context, error, stackTrace) {
        return Container(
          height: height,
          width: width,
          color: Colors.grey[300],
          child: const Icon(Icons.image, color: Colors.grey),
        );
      },
    );
  }
}
