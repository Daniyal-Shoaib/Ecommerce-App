import 'package:flutter/material.dart';

import '../helpers/app_images_path.dart';

class BackButton extends StatelessWidget {
  const BackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14.0, bottom: 14.0, right: 14.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Image.asset(
          AppImagesPath().rightArrowIcons,
          height: 23,
          width: 23,
        ),
      ),
    );
  }
}