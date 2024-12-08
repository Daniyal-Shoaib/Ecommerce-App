import 'package:ecommerce_app/custom_widget/forget_custom.dart';
import 'package:ecommerce_app/helpers/app_images_path.dart';
import 'package:ecommerce_app/views/shipping_addresses/edit_shpping_address.dart';
import 'package:flutter/material.dart';
class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 24,
            color: Colors.black,
          ),
        ),
        title: ForgetCustom(
          text: 'Checkout',
          fontSize: 20,
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 30, left: 30),
              child: ForgetCustom(
                text: 'Shipping address',
                fontSize: 16,
              )),
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 15),
            child: SizedBox(
              width: 343,
              height: 130,
              child: Card(
                elevation: 2,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: ForgetCustom(
                              text: 'Jane Doe',
                              fontSize: 14,
                            )),
                        SizedBox(width: 150,),
                        Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: TextButton(
                                onPressed: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context)=>EditShippingAddresses()
                                      )
                                  );
                                },
                                child: Text("Change",style: TextStyle(color: Colors.red,fontSize: 14),)
                            )
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text("3 New-bridge Court\nChino Hills, CA 91709, United States"),
                    ),


                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50, left: 40),
            child: Row(
              children: [
                ForgetCustom(
                  text: 'Payment',
                  fontSize: 14,
                ),
                SizedBox(width: 180,),
                TextButton(
                    onPressed: (){},
                    child: Text("Change",style: TextStyle(color: Colors.red,fontSize: 14),)
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 35),
            child: Row(
              children: [
               SizedBox(
                 width:70,
                 height: 45,
                 child: Card(
                   color: Colors.white,
                   elevation: 3,
                   child: Image(
                       image: AssetImage(AppImagesPath.card)
                   ),
                 ),
               ),
                SizedBox(width: 10,),
                Text("**** **** **** 3947",style: TextStyle(color: Colors.black,fontSize: 16),)
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 40,top: 30),
              child: ForgetCustom(text: 'Delivery method',fontSize: 14,),
          ),
          Padding(
              padding: EdgeInsets.only(left: 40,top: 30),
              child:Row(
                children: [
                  SizedBox(
                    width:100,
                    height: 72,
                    child: Card(
                      color: Colors.white,
                      elevation: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 20,),
                          Image(image: AssetImage(AppImagesPath.fedex)),
                          SizedBox(height: 3,),
                          Text(" 2-3 days")
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  SizedBox(
                    width:100,
                    height: 72,
                    child: Card(
                      color: Colors.white,
                      elevation: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 20,),
                          Image(image: AssetImage(AppImagesPath.usps)),
                          SizedBox(height: 3,),
                          Text(" 2-3 days")
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  SizedBox(
                    width:100,
                    height: 72,
                    child: Card(
                      color: Colors.white,
                      elevation: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 20,),
                          Image(image: AssetImage(AppImagesPath.dhl)),
                          SizedBox(height: 3,),
                          Text(" 2-3 days")
                        ],
                      ),
                    ),
                  ),
                ],
              )
          ),
          Padding(
            padding: EdgeInsets.only(left: 40,top: 30),
            child: Row(
              children: [
                Text("Order:"),
                SizedBox(width: 250,),
                ForgetCustom(text: '112\$',fontSize: 14,),
              ],
            )
          ),
          Padding(
            padding: EdgeInsets.only(left: 40,top: 20),
            child: Row(
              children: [
                Text("Delivery:"),
                SizedBox(width: 240,),
                ForgetCustom(text: '18\$',fontSize: 14,),
              ],
            )
          ),
          Padding(
            padding: EdgeInsets.only(left: 40,top: 20),
            child: Row(
              children: [
                Text("Summary:"),
                SizedBox(width: 225,),
                ForgetCustom(text: '127\$',fontSize: 14,),
              ],
            )
          ),
          SizedBox(height: 70,),
          Padding(
            padding: const EdgeInsets.only(left: 40,),
            child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  fixedSize: Size(320, 48)
              ),
              child: Center(child: Text("SUBMIT ORDER",style: TextStyle(color:Colors.white),)),
            ),
          )
        ],
      ),
    );
  }
}


