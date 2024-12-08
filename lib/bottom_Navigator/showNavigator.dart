import 'package:ecommerce_app/views/categories/tab_bar.dart';
import 'package:ecommerce_app/views/favorites/addingToFav.dart';
import 'package:ecommerce_app/views/myBag/mybag_one.dart';
import 'package:ecommerce_app/views/profile/my_profile.dart';
import 'package:ecommerce_app/views/screens/main_screen/main_page.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/helpers/app_colors.dart';
import 'package:ecommerce_app/helpers/app_images_path.dart';


class MainPageBottom extends StatefulWidget {
  const MainPageBottom({super.key});

  @override
  _MainPageBottomState createState() => _MainPageBottomState();
}

class _MainPageBottomState extends State<MainPageBottom> {
  int _selectedIndex = 0;

  // List of pages for navigation
  final List<Widget> _pages = [
    const MainPage(),
    const TabBarClass(),
    const MyBagOne(),
    const AddingToFav(),
    const MyProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        selectedItemColor: AppColors.redColor,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Bag',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
    );
  }
}
