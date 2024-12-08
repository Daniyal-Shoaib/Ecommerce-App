import 'package:flutter/material.dart';

class SocialMediaButton extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;

  const SocialMediaButton({
    Key? key,
    required this.imagePath,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20), // Rounded corners
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Center(
          child: Image.asset(
            imagePath,
            height: 30, // Adjust icon size if necessary
            width: 30,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
