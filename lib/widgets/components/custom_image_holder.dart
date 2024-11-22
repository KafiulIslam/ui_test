import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ui_test/utils/color.dart';

class CustomImageHolder extends StatelessWidget {
  final String imageUrl;
  final double height;
  final double width;
  final bool isCircle;

  const CustomImageHolder(
      {Key? key,
      required this.imageUrl,
      required this.height,
      required this.width,
      this.isCircle = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      imageBuilder: (context, imageProvider) => Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: AppColor.secondaryColor,
         // border: Border.all(color: AppColor.borderColor),
          shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
          image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
        ),
      ),
      placeholder: (context, url) => const Padding(
        padding: EdgeInsets.all(6.0),
        child: CircularProgressIndicator(
          color: AppColor.primaryColor,
        ),
      ),
      errorWidget: (context, url, error) => Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: AppColor.secondaryColor,
          border: Border.all(color: AppColor.primaryColor),
          shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
        ),
        alignment: Alignment.center,
        child: const Icon(
          Icons.image,
          color: AppColor.borderColor,
        ),
      ),
    );
  }
}
