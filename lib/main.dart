import 'package:ecommerce_app/provider/auth_provider.dart';
import 'package:ecommerce_app/views/categories/categories_zero.dart';
import 'package:ecommerce_app/views/categories/tab_bar.dart';
import 'package:ecommerce_app/views/favorites/addingToFav.dart';
import 'package:ecommerce_app/views/myBag/mybag_one.dart';
import 'package:ecommerce_app/views/productCard/selectSize.dart';
import 'package:ecommerce_app/views/profile/my_profile.dart';
import 'package:ecommerce_app/views/rating_reviews/rating.dart';
//import 'package:ecommerce_app/views/screens/main_screen/main_page.dart';
import 'package:ecommerce_app/views/screens/user_auth/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(

       providers: [

         ChangeNotifierProvider(create: (_)=>AuthProvider())
       ],
       child: const MaterialApp(
         debugShowCheckedModeBanner: false,
         home:SignUp(),
       ),
    );
  }
}
