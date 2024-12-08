import 'package:ecommerce_app/custom_widget/forget_custom.dart';
import 'package:ecommerce_app/helpers/app_images_path.dart';
import 'package:ecommerce_app/views/shipping_addresses/adding_shipping_address.dart';
import 'package:flutter/material.dart';

class EditShippingAddresses extends StatefulWidget {
  const EditShippingAddresses({super.key});

  @override
  State<EditShippingAddresses> createState() => _EditShippingAddressesState();
}

class _EditShippingAddressesState extends State<EditShippingAddresses> {
  int? selectedPaymentMethod;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          text: 'Shipping Addresses',
          fontSize: 20,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 15),
            child: SizedBox(
              width: 343,
              height: 170,
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
                        SizedBox(
                          width: 150,
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              AddingShippingAddress()));
                                },
                                child: Text(
                                  "Edit",
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 14),
                                ))),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                          "3 New-bridge Court\nChino Hills, CA 91709, United States"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: selectedPaymentMethod == 1,
                            activeColor: Colors.black,
                            onChanged: (value) {
                              setState(() {
                                selectedPaymentMethod =
                                    value == true ? 1 : null;
                              });
                            }),
                        Text(
                          "Use as default payment method",
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 15),
            child: SizedBox(
              width: 343,
              height: 170,
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
                        SizedBox(
                          width: 150,
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              AddingShippingAddress()));
                                },
                                child: Text(
                                  "Edit",
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 14),
                                ))),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                          "51 Riverside\nChino Hills, CA 91709, United States"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: selectedPaymentMethod == 2,
                            activeColor: Colors.black,
                            onChanged: (value) {
                              setState(() {
                                selectedPaymentMethod =
                                value == true ? 2 : null;
                              });
                            }),
                        Text(
                          "Use as default payment method",
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 15),
            child: SizedBox(
              width: 343,
              height: 170,
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
                        SizedBox(
                          width: 150,
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              AddingShippingAddress()));
                                },
                                child: Text(
                                  "Edit",
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 14),
                                ))),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                          "92 Pool Side\nChino Hills, CA 91709, United States"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: selectedPaymentMethod == 3,
                            activeColor: Colors.black,
                            onChanged: (value) {
                              setState(() {
                                selectedPaymentMethod =
                                value == true ? 3 : null;
                              });
                            }),
                        Text(
                          "Use as default payment method",
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 300,top: 60),
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
                    Navigator.push(

                        context,
                        MaterialPageRoute(
                            builder: (context)=>AddingShippingAddress(),
                        )
                    );

                  }),
            ),
          )
        ],
      ),
    );
  }
}
