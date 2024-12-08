import 'package:ecommerce_app/custom_widget/forget_custom.dart';
import 'package:ecommerce_app/helpers/app_images_path.dart';
import 'package:flutter/material.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  int? selectedPaymentMethod;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe3dbdb),
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
          text: 'Payment methods',
          fontSize: 20,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.only(top: 30, left: 30),
                child: ForgetCustom(
                  text: 'Your payment cards',
                  fontSize: 16,
                )),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Image(
                  image: AssetImage(
                AppImagesPath.paymentCard,
              )),
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Checkbox(
                    value: selectedPaymentMethod == 1,
                    activeColor: Colors.black,
                    onChanged: (value) {
                      setState(() {
                        selectedPaymentMethod = value == true ? 1 : null;
                      });
                    }),
                Text(
                  "Use as default payment method",
                  style: TextStyle(fontSize: 14),
                )
              ],
            ),
            Center(
              child: Image(
                  image: AssetImage(
                AppImagesPath.paymentCardTwo,
              )),
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Checkbox(
                    value: selectedPaymentMethod == 2,
                    activeColor: Colors.black,
                    onChanged: (value) {
                      setState(() {
                        selectedPaymentMethod = value == true ? 2 : null;
                      });
                    }),
                Text(
                  "Use as default payment method",
                  style: TextStyle(fontSize: 14),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 330,top: 40),
              child: SizedBox(
                width: 36,
                height: 36,
                child: FloatingActionButton(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
        
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      showModalBottomSheet(
                        isDismissible: false,
                          isScrollControlled: true,
                          context: context,
                          builder: (BuildContext context){
                            return FractionallySizedBox(
                              heightFactor: 0.65,
                              child: Container(

                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10,),
                                    Center(
                                      child: Container(
                                        width: 60,
                                        height: 6,
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 15,),
                                    Center(
                                      child: ForgetCustom(text: 'Add new card',fontSize: 18,),
                                    ),
                                    SizedBox(height: 15,),
                                    Center(
                                      child: Card(
                                        elevation: 2,
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
                                          child: const Padding(
                                            padding: EdgeInsets.only(left: 20, top: 10),
                                            child: TextField(
                                              decoration: InputDecoration(
                                                hintText: 'Name on card',
                                                hintStyle:
                                                TextStyle(color: Color(0xff9B9B9B)),
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
                                        elevation: 2,
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
                                                labelText: 'Card number',
                                                labelStyle: TextStyle(color: Color(0xff9B9B9B)),
                                                hintText: "5546 8205 3693 3947",
                                                hintStyle: TextStyle(color: Color(0xff9B9B9B)),
                                                suffix: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Image(

                                                      image: AssetImage(
                                                      AppImagesPath.card
                                                  )),
                                                ),
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
                                        elevation: 2,
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
                                                labelText: 'Expire Date',
                                                labelStyle: TextStyle(color: Color(0xff9B9B9B)),
                                                hintText: "05/23",
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
                                        elevation: 2,
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
                                                labelText: 'CVV',
                                                labelStyle: TextStyle(color: Color(0xff9B9B9B)),
                                                hintText: "567",
                                                hintStyle: TextStyle(color: Color(0xff9B9B9B)),

                                                border: InputBorder.none,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 15,),
                                    selectedPaymentMethod==2 ?
                                        Row(
                                      children: [
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Checkbox(
                                            value: selectedPaymentMethod == 2,
                                            activeColor: Colors.black,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedPaymentMethod = value == true ? 2 : null;
                                              });
                                            }),
                                        Text(
                                          "Use as default payment method",
                                          style: TextStyle(fontSize: 14),
                                        )
                                      ],
                                    )
                                        :
                                        Row(
                                      children: [
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Checkbox(
                                            value: selectedPaymentMethod == 1,
                                            activeColor: Colors.black,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedPaymentMethod = value == true ? 1 : null;
                                              });
                                            }),
                                        Text(
                                          "Use as default payment method",
                                          style: TextStyle(fontSize: 14),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 15,),
                                    Center(
                                      child: ElevatedButton(
                                          onPressed: (){},
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.red,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                            fixedSize: Size(343, 48)
                                          ),
                                          child: Center(child: Text("ADD CARD",style: TextStyle(color:Colors.white),)),
                                      ),
                                    )

                                  ],
                                ),
                              ),
                            );
                          }
                      );
        
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
