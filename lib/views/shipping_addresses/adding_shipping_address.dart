import 'package:ecommerce_app/custom_widget/forget_custom.dart';
import 'package:ecommerce_app/views/success/success_one.dart';
import 'package:flutter/material.dart';
class AddingShippingAddress extends StatefulWidget {
  const AddingShippingAddress({super.key});

  @override
  State<AddingShippingAddress> createState() => _AddingShippingAddressState();
}

class _AddingShippingAddressState extends State<AddingShippingAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Color(0xffF0F0F0),
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
          text: 'Adding Shipping Addresses',
          fontSize: 20,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Center(
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Container(
                  width: 343,
                  height: 64,
                  decoration: const BoxDecoration(
                    color: Colors.white38,
                    shape: BoxShape.rectangle,
                  ),
                  child:  Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: TextField(

                      decoration: InputDecoration(

                        labelText: 'Full Name',
                        labelStyle: TextStyle(color: Color(0xff9B9B9B)),
                        hintText: "Daniyal",
                        hintStyle: TextStyle(color: Color(0xff9B9B9B)),

                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Center(
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Container(
                  width: 343,
                  height: 64,
                  decoration: const BoxDecoration(
                    color: Colors.white38,
                    shape: BoxShape.rectangle,
                  ),
                  child:  Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: TextField(

                      decoration: InputDecoration(

                        labelText: 'Address',
                        labelStyle: TextStyle(color: Color(0xff9B9B9B)),
                        hintText: "3 New-bridge Court",
                        hintStyle: TextStyle(color: Color(0xff9B9B9B)),

                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Center(
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Container(
                  width: 343,
                  height: 64,
                  decoration: const BoxDecoration(
                    color: Colors.white38,
                    shape: BoxShape.rectangle,
                  ),
                  child:  Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: TextField(

                      decoration: InputDecoration(

                        labelText: 'City',
                        labelStyle: TextStyle(color: Color(0xff9B9B9B)),
                        hintText: "Chino Hills",
                        hintStyle: TextStyle(color: Color(0xff9B9B9B)),

                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Center(
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Container(
                  width: 343,
                  height: 64,
                  decoration: const BoxDecoration(
                    color: Colors.white38,
                    shape: BoxShape.rectangle,
                  ),
                  child:  Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: TextField(

                      decoration: InputDecoration(

                        labelText: 'State/Province/Region',
                        labelStyle: TextStyle(color: Color(0xff9B9B9B)),
                        hintText: "California",
                        hintStyle: TextStyle(color: Color(0xff9B9B9B)),

                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Center(
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Container(
                  width: 343,
                  height: 64,
                  decoration: const BoxDecoration(
                    color: Colors.white38,
                    shape: BoxShape.rectangle,
                  ),
                  child:  Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: TextField(

                      decoration: InputDecoration(

                        labelText: 'Zip Code (Postal Code)',
                        labelStyle: TextStyle(color: Color(0xff9B9B9B)),
                        hintText: "91709",
                        hintStyle: TextStyle(color: Color(0xff9B9B9B)),

                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Center(
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Container(
                  width: 343,
                  height: 64,
                  decoration: const BoxDecoration(
                    color: Colors.white38,
                    shape: BoxShape.rectangle,
                  ),
                  child:  Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: TextField(

                      decoration: InputDecoration(

                        labelText: 'Country',
                        labelStyle: TextStyle(color: Color(0xff9B9B9B)),
                        hintText: "USA",
                        hintStyle: TextStyle(color: Color(0xff9B9B9B)),

                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 35,),
            Center(
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)=>SuccessOne()
                      )
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    fixedSize: Size(330, 48)
                ),
                child: Center(child: Text("SAVE ADDRESS",style: TextStyle(color:Colors.white),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
