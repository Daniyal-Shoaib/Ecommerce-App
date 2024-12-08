import 'package:ecommerce_app/custom_widget/forget_custom.dart';
import 'package:flutter/material.dart';
class Rating extends StatefulWidget {
  const Rating({super.key});

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
   // Progress value (between 0.0 and 1.0)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Icon(Icons.arrow_back,color: Colors.black,size: 30,),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ForgetCustom(text: 'Rating & Reviews',fontSize: 34,),
          ),

        ],
      ),
    );
  }
}
