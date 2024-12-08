import 'package:ecommerce_app/custom_widget/forget_custom.dart';
import 'package:ecommerce_app/helpers/app_colors.dart';
import 'package:ecommerce_app/helpers/app_images_path.dart';
import 'package:ecommerce_app/views/categories/categories_zero.dart';
import 'package:flutter/material.dart';

class TabBarClass extends StatefulWidget {
  const TabBarClass({super.key});

  @override
  State<TabBarClass> createState() => _TabBarClassState();
}

class _TabBarClassState extends State<TabBarClass> {
  @override
  Widget build(BuildContext context) {
    AppImagesPath appImagesPath = AppImagesPath();
    return DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Image.asset(
                color: AppColors.blackColor,
                width: 24,
                height: 24,
                appImagesPath.backArrowIcon,
              ),
            ),
            centerTitle: true,
            title: const ForgetCustom(
              text: 'Categories',
              fontSize: 18,
              color: AppColors.blackColor,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Image(
                  width: 20,
                  height: 20,
                  color: AppColors.blackColor,
                  image: AssetImage(
                    appImagesPath.searchIcons,
                  ),
                ),
              )
            ],

          ),
          body: Column(
            children: [
              Container(
                decoration: const BoxDecoration(

                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffFFFFFF),
                      blurRadius: 15,
                      spreadRadius: 0,

                    )
                  ]
                ),
                child: const TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.red,
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(width: 2.5, color: Colors.red),
                    insets: EdgeInsets.symmetric(horizontal: -20),
                  ),

                    tabs: [

                 Text(
                   "Women",
                   style: TextStyle(
                     fontSize: 16
                 ),),
                 Text(
                   "Men",
                   style: TextStyle(
                     fontSize: 16
                 ),),
                 Text(
                   "Kids",
                   style: TextStyle(
                     fontSize: 16
                 ),),


                ]),
              ),
            const  Expanded(
                child: TabBarView(
                  children: [
                    Center(child: CategoriesZero()),
                    Center(child: CategoriesZero()),
                    Center(child: CategoriesZero()),
                  ],
                ),
              ),
            ],
          ),



        ));
  }
}
