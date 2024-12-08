import 'package:flutter/material.dart';

class IconButtonRow extends StatelessWidget {
  const IconButtonRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        // Lightning icon
        IconButton(
          icon: const Icon(Icons.flash_on),
          onPressed: () {
            // Action for the lightning icon
          },
        ),
        // Camera icon with red background
        Container(
          decoration: BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: const Icon(Icons.camera_alt, color: Colors.white),
            onPressed: () {
              // Action for the camera icon
            },
          ),
        ),
        // Refresh icon
        IconButton(
          icon: const Icon(Icons.refresh),
          onPressed: () {
            // Action for the refresh icon
          },
        ),
      ],
    );
  }
}
