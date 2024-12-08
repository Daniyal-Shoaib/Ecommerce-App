import 'package:ecommerce_app/custom_widget/back_button.dart';
import 'package:ecommerce_app/custom_widget/top_header_widget.dart';
import 'package:ecommerce_app/helpers/app_colors.dart';
import 'package:ecommerce_app/helpers/app_images_path.dart';
import 'package:ecommerce_app/views/screens/visual_finder/crop_item.dart';

import 'package:flutter/material.dart';

class PhotoSearch extends StatelessWidget {
  const PhotoSearch({super.key});

  @override
  Widget build(BuildContext context) {
    AppImagesPath appImagesPath = AppImagesPath();
    double screenHeight = MediaQuery.of(context).size.height;
    double appBarHeight = kToolbarHeight; // Default AppBar height

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        leading: const CustomBackButton(),
        centerTitle: true,
        title: const Text("Search By Taking a Photo",style: TextStyle(
          color: AppColors.blackColor,
          fontSize: 20,
          fontFamily: 'MetroPolies',
          fontWeight: FontWeight.w700,
        ),),
      ),
      body: Column(
        children: [
          // Background image container with dynamic height
          Container(
            height: screenHeight - appBarHeight - 120, // Adjust height if needed
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(appImagesPath.visualImageSearch),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Row of icons at the bottom
           Padding(
            padding: const EdgeInsets.symmetric(vertical: 10), // Padding to give space around Row
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // Lightning icon
                IconButton(
                  icon:  const Icon(Icons.flash_on),
                  onPressed: () {
                    // Action for the lightning icon
                  },
                ),
                // Camera icon with red background
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.camera_alt, color: Colors.white),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context)=>CropItem(),
                          )
                      );
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
            ),
          ),
        ],
      ),
    );
  }
}


