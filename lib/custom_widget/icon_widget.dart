import 'package:ecommerce_app/helpers/app_colors.dart';
import 'package:flutter/material.dart';
class IconWidget extends StatelessWidget {
  final String image;
  final VoidCallback onPressed;
  const IconWidget({
    super.key,
    required this.image,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
          onPressed: onPressed,
          icon: Image.asset(
            image,
            height: 30,
            width: 30,
          ),
          style: IconButton.styleFrom(
            //backgroundColor: AppColors.whiteColor,
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          ),

    ));
  }
}
