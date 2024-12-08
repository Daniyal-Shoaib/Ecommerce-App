import 'package:ecommerce_app/bottom_Navigator/showNavigator.dart';
import 'package:ecommerce_app/custom_widget/top_header_widget.dart';
import 'package:ecommerce_app/helpers/app_colors.dart';
import 'package:ecommerce_app/views/screens/main_screen/main_page.dart';
import 'package:flutter/material.dart';

class FindingItem extends StatefulWidget {
  const FindingItem({super.key});

  @override
  _FindingItemState createState() => _FindingItemState();
}

class _FindingItemState extends State<FindingItem> {
  @override
  void initState() {
    super.initState();
    // Delay navigation by 2 seconds
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>  MainPageBottom()), // Target screen
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: IconButton(
              icon: const Icon(Icons.search, color: Colors.red, size: 50),
              onPressed: () {},
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TopHeaderWidget(text: "Finding similar"),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TopHeaderWidget(text: "results..."),
            ],
          ),
        ],
      ),
    );
  }
}
