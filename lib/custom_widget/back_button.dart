import 'package:flutter/material.dart';

import '../helpers/app_images_path.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14.0, bottom: 14.0, right: 14.0,left: 14),
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Image.asset(
          AppImagesPath().backArrowIcon,
          height: 23,
          width: 23,
        ),
      ),
    );
  }
}