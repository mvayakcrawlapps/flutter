import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

Widget commonImage({required String imageUrl, double height = 60, double width = 60, double borderRadius = 12}) {
  return CachedNetworkImage(
    imageUrl: imageUrl,
    imageBuilder: (context, imageProvider) => Container(
        height: height,
        width: width,
        decoration:
            BoxDecoration(image: DecorationImage(image: imageProvider, fit: BoxFit.cover), borderRadius: BorderRadius.circular(borderRadius))),
    placeholder: (context, url) => const CircularProgressIndicator(),
    errorWidget: (context, url, error) => const Icon(Icons.error),
  );
}
