import 'package:ecommerce_app/custom_widget/elevated_button.dart';
import 'package:ecommerce_app/custom_widget/forget_custom.dart';
import 'package:ecommerce_app/helpers/app_colors.dart';
import 'package:ecommerce_app/helpers/app_images_path.dart';
import 'package:ecommerce_app/views/catlog/catalog_directory/catalog_zero.dart';

import 'package:ecommerce_app/views/categories/category_model.dart';

import 'package:flutter/material.dart';
class CategoriesTwo extends StatelessWidget {
  const CategoriesTwo({super.key});

  @override
  Widget build(BuildContext context) {
   AppImagesPath appImagesPath = AppImagesPath();
  final List<ChooseItem> chooseItem =[
    ChooseItem(
      chooseName: 'Tops',
    ),
    ChooseItem(
      chooseName: 'Shirts & Blouses',
    ),
    ChooseItem(
      chooseName: 'Cardigans & Sweaters',
    ),
    ChooseItem(
      chooseName: 'Knitwear',
    ),
    ChooseItem(
      chooseName: 'Blazers',
    ),
    ChooseItem(
      chooseName: 'Outerwear',
    ),
    ChooseItem(
      chooseName: 'Pants',
    ),
    ChooseItem(
      chooseName: 'Jeans',
    ),
    ChooseItem(
      chooseName: 'Shorts',
    ),
    ChooseItem(
      chooseName: 'Skirts',
    ),
    ChooseItem(
      chooseName: 'Dresses',
    ),

  ];
   final Map<String, Widget> categoryScreens = {
     'Tops': const CatalogZero(),
     'Shirts & Blouses': const CatalogZero(),
     'Cardigans & Sweaters': const CatalogZero(),
     'Knitwear': const CatalogZero(),
     'Shorts': const CatalogZero(),
     'Skirts': const CatalogZero(),
     'Dresses': const CatalogZero(),
   };
    return Scaffold(
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
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Center(
              child: ElevatedBtn(
                text: 'VIEW ALL ITEMS',
                onPressed: () {
                 Navigator.push(
                     context,
                     MaterialPageRoute(
                         builder: (context)=>const CatalogZero(),
                     )
                 );
                },
              ),
            ),
           const Padding(
              padding: EdgeInsets.only(top: 12,right: 215),
              child: ForgetCustom(
                  text: 'Choose category',
                  fontSize: 14,
                  color: Color(0xff9B9B9B),
              ),
            ),
          const  SizedBox(height: 35,),
            Expanded(
              child: ListView.builder(
                itemCount: chooseItem.length,
                  itemBuilder: (context,index){
                    final choose = chooseItem[index];
                    final screen = categoryScreens[choose.chooseName];
                    return GestureDetector(
                        onTap: (){
                          if(screen!= null){
                         Navigator.push(
                             context,
                            MaterialPageRoute(
                                builder: (context)=>screen,
                            ),
                         );
                          }
                        },

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const   SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.only(left: 65),
                            child: ForgetCustom(
                              text: choose.chooseName,
                              fontSize: 16,
                              color: const Color(0xff222222),
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Divider(
                            color: Colors.grey.shade300,
                          ),
                        ],
                      ),
                    );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
