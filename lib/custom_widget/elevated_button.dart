
import 'package:ecommerce_app/helpers/app_colors.dart';
import 'package:flutter/material.dart';

class ElevatedBtn extends StatelessWidget {
  const ElevatedBtn({
    super.key,
    required this.text,
    required this.onPressed
  });

  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 48,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(

            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 1,
                color: AppColors.redColor,
              ),
              borderRadius: BorderRadius.circular(25),
            ),
            backgroundColor: Colors.red
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
            fontFamily: "MetroPolies",
            color: Colors.white.withOpacity(.85), // Keep text color
          ),
        ),
      ),
    );
  }
}