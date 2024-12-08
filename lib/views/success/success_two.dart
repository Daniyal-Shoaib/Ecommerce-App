import 'package:ecommerce_app/custom_widget/forget_custom.dart';
import 'package:ecommerce_app/helpers/app_images_path.dart';
import 'package:flutter/material.dart';
class SuccessTwo extends StatelessWidget {
  const SuccessTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 180,),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Image(image: AssetImage(
                AppImagesPath.bags,
              ),),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 30, ),
            child: ForgetCustom(
              text: 'Success!',
              fontSize: 34,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 30, ),
            child: Text("Your order will be delivered soon.\nThank you for choosing our app!")
          ),
          SizedBox(height: 150,),
          Center(
            child: ElevatedButton(
              onPressed: (){

              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  fixedSize: Size(300, 48)
              ),
              child: Center(child: Text("CONTINUE SHOPPING",style: TextStyle(color:Colors.white),)),
            ),
          )
        ],
      ),
    );
  }
}
