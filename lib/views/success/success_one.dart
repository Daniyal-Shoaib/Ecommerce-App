import 'dart:ui';

import 'package:ecommerce_app/custom_widget/forget_custom.dart';
import 'package:ecommerce_app/helpers/app_images_path.dart';

import 'package:flutter/material.dart';
import 'success_two.dart';

class SuccessOne extends StatefulWidget {
  const SuccessOne({super.key});

  @override
  State<SuccessOne> createState() => _SuccessOneState();
}

class _SuccessOneState extends State<SuccessOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Image(
            image: AssetImage(
              AppImagesPath.successGirlOne,
            ),
            fit: BoxFit.cover,
          )),
          Positioned(
            left: 130,
              top: 170,
              child: ForgetCustom(
              text: 'Success!',
              fontSize: 34,
                        ),
          ),
          Positioned(
            left: 70,
              top: 220,
              child:  ForgetCustom(
               text: 'Your order will be delivered soon.\nThank you for choosing our app!',
              fontSize: 16,
           ),
          ),
          Positioned(
            left: 120,
              top: 270,
              child:  ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context)=>SuccessTwo(),
                        )
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize:Size(168, 36),
                    backgroundColor: Colors.red
                  ),
                  child:Center(
                    child: Text("Continue Shopping",style:TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),),
                  )
              )
          ),
        ],
      ),
    );
  }
}

//ForgetCustom(
//               text: 'Success!',
//               fontSize: 34,
//           ),
//           SizedBox(height: 10,),
//
//           Image(image: AssetImage(AppImagesPath.successGirlOne))
