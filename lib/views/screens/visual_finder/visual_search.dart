import 'package:ecommerce_app/custom_widget/back_button.dart';
import 'package:ecommerce_app/custom_widget/elevated_button.dart';
import 'package:ecommerce_app/custom_widget/top_header_widget.dart';
import 'package:ecommerce_app/custom_widget/white_elevated_custom.dart';
import 'package:ecommerce_app/helpers/app_colors.dart';
import 'package:ecommerce_app/helpers/app_images_path.dart';
import 'package:ecommerce_app/views/screens/visual_finder/photo_search.dart';
import 'package:flutter/material.dart';

class VisualSearch extends StatelessWidget {
  const VisualSearch({super.key});

  @override
  Widget build(BuildContext context) {
    AppImagesPath appImagesPath = AppImagesPath();
    return Stack(
      children: [
        Positioned.fill(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 85.0), // Adjust padding as needed
            child: Image.asset(
              appImagesPath.backgroundImage,
              fit: BoxFit.cover,
              alignment: Alignment.topCenter, // Align image to start from top
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: AppColors.whiteColor,
            leading: const CustomBackButton(),
            centerTitle: true,
            title: const Text("Visual Search",style: TextStyle(
              color: AppColors.blackColor,
              fontSize: 20,
              fontFamily: 'MetroPolies',
              fontWeight: FontWeight.w700,
            ),),
          ),
          body:  Column(
            children: [
              const  Padding(
                padding: EdgeInsets.only(left: 20,top: 210,right: 10),
                child: Text(
                  "Search for an outfit by\ntaking a photo or uploading\nan image",
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 24,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'MetroPolies',

                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30,right: 20,top: 30),
                child: ElevatedBtn(
                  text: 'TAKE A PHOTO',
                  onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context)=>PhotoSearch(),
                    )
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 15),
                child:TransparentElevatedBtn(text: 'UPLOAD AN IMAGE', onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(
                    builder: (context)=>PhotoSearch(),
                  )
                  );
                },)
              )
            ],
          ),
        ),
      ],
    );
  }
}
