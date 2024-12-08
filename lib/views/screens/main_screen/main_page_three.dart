import 'package:ecommerce_app/helpers/app_colors.dart';
import 'package:ecommerce_app/helpers/app_images_path.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/custom_widget/forget_custom.dart';

class MainPageThree extends StatelessWidget {
  const MainPageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImagesPath.screenThreeImgOne),
                  fit: BoxFit.cover,
                ),
              ),
              child: const Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 156, bottom: 16),
                  child: ForgetCustom(
                    text: 'New Collection',
                    color: AppColors.whiteColor,
                    fontSize: 26,
                  ),
                ),
              ),
            ),
        

            Expanded(
              child: Row(
                children: [
                  // Column for "Summer Sale" and "Black"
                  Column(
                    children: [
                      // "Summer Sale" box
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.25,
                        color: Colors.white,
                        child: const Center(
                          child: ForgetCustom(
                            text: 'Summer\nSale',
                            color: Colors.red,
                            fontSize: 32,
                           // textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      // "Black" image box
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.21,
                        decoration: BoxDecoration(

                          image: DecorationImage(
                            image: AssetImage(AppImagesPath.mainThreeBlack),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: const Center(
                          child: ForgetCustom(
                            text: 'Black',
                            color: Colors.white,
                            fontSize: 32,
                          //  textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
        
                  // "Men's Hoodies" taking up the right side
                  Expanded(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppImagesPath.mainThreeMensHoodies),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: ForgetCustom(
                            text: "Men's Hoodies",
                            color: Colors.white,
                            fontSize: 34,
                           // textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
