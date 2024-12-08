import 'package:ecommerce_app/custom_widget/forget_custom.dart';
import 'package:ecommerce_app/views/oders_details/model_order.dart';
import 'package:ecommerce_app/views/oders_details/orderDetails.dart';

import 'package:flutter/material.dart';

class MyOrder extends StatefulWidget {
  const MyOrder({super.key});

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  List<ModelOrder> modelOrders = [
    ModelOrder(
        orderNumber: 'Order №1947034',
        date: '05-12-2019',
        trackNumber: 'IW3475453455',
        quantity: 3,
        totalAmount: 112),
    ModelOrder(
        orderNumber: 'Order №1947034',
        date: '05-12-2019',
        trackNumber: 'IW3475453455',
        quantity: 3,
        totalAmount: 112),
    ModelOrder(
        orderNumber: 'Order №1947034',
        date: '05-12-2019',
        trackNumber: 'IW3475453455',
        quantity: 3,
        totalAmount: 112),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      initialIndex: 0, // Default selected tab

      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: const Icon(Icons.arrow_back_ios_new_rounded,
                color: Colors.black),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 30),
              child: Icon(Icons.search, color: Colors.black),
            )
          ],
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  'My Orders',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TabBar(
                indicator: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15),
                ),
                dividerColor: Colors.transparent,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                labelStyle:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                unselectedLabelStyle: const TextStyle(fontSize: 14),
                tabs: const [
                  SizedBox(
                      width: 100, height: 30, child: Tab(text: "Delivered")),
                  SizedBox(
                      width: 100, height: 30, child: Tab(text: "Processing")),
                  SizedBox(
                      width: 100, height: 30, child: Tab(text: "Cancelled")),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Center(
                      child: ListView.builder(
                          itemCount: modelOrders.length,
                          itemBuilder: (context, index) {
                            var item = modelOrders[index];
                            return Container(
                              width: 343,
                              height: 220,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 20),
                                child: Card(
                                  color: Colors.white,
                                  elevation: 3,
                                  shadowColor: Colors.grey,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 10),
                                        child: Row(
                                          children: [
                                            ForgetCustom(
                                              text: '${item.orderNumber}',
                                              fontSize: 16,
                                            ),
                                            SizedBox(
                                              width: 80,
                                            ),
                                            Text(
                                              item.date,
                                              style: TextStyle(
                                                  color: Color(0xff222222),
                                                  fontSize: 16,
                                                  fontFamily: 'MetroPolies'),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 10),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Tracking number:",
                                              style: TextStyle(
                                                  color: Color(0xff222222),
                                                  fontSize: 16,
                                                  fontFamily: 'MetroPolies'),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            ForgetCustom(
                                              text: '${item.trackNumber}',
                                              fontSize: 14,
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 0, horizontal: 10),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Quantity:",
                                              style: TextStyle(
                                                  color: Color(0xff222222),
                                                  fontSize: 16,
                                                  fontFamily: 'MetroPolies'),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            ForgetCustom(
                                              text: '${item.quantity}',
                                              fontSize: 14,
                                            ),
                                            SizedBox(
                                              width: 70,
                                            ),
                                            Text(
                                              "Total Amount:",
                                              style: TextStyle(
                                                  color: Color(0xff222222),
                                                  fontSize: 16,
                                                  fontFamily: 'MetroPolies'),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            ForgetCustom(
                                              text: '${item.totalAmount}\$',
                                              fontSize: 14,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 10),
                                        child: Row(
                                          children: [
                                            ElevatedButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              OrderDetails(
                                                                order: item,

                                                              )));
                                                },
                                                style: ElevatedButton.styleFrom(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    fixedSize: Size(104, 40),
                                                    side: BorderSide(
                                                        color: Colors.black),
                                                    backgroundColor:
                                                        Colors.white),
                                                child: ForgetCustom(
                                                  text: 'Details',
                                                  fontSize: 14,
                                                  color: Colors.black,
                                                )),
                                            SizedBox(
                                              width: 125,
                                            ),
                                            Text(
                                              "Delivered",
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontSize: 14,
                                                  fontFamily: 'MetroPolies'),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                    Center(
                      child: ListView.builder(
                          itemCount: modelOrders.length,
                          itemBuilder: (context, index) {
                            var item = modelOrders[index];
                            return Container(
                              width: 343,
                              height: 220,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 20),
                                child: Card(
                                  color: Colors.white,
                                  elevation: 3,
                                  shadowColor: Colors.grey,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 10),
                                        child: Row(
                                          children: [
                                            ForgetCustom(
                                              text: '${item.orderNumber}',
                                              fontSize: 16,
                                            ),
                                            SizedBox(
                                              width: 80,
                                            ),
                                            Text(
                                              item.date,
                                              style: TextStyle(
                                                  color: Color(0xff222222),
                                                  fontSize: 16,
                                                  fontFamily: 'MetroPolies'),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 10),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Tracking number:",
                                              style: TextStyle(
                                                  color: Color(0xff222222),
                                                  fontSize: 16,
                                                  fontFamily: 'MetroPolies'),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            ForgetCustom(
                                              text: '${item.trackNumber}',
                                              fontSize: 14,
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 0, horizontal: 10),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Quantity:",
                                              style: TextStyle(
                                                  color: Color(0xff222222),
                                                  fontSize: 16,
                                                  fontFamily: 'MetroPolies'),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            ForgetCustom(
                                              text: '${item.quantity}',
                                              fontSize: 14,
                                            ),
                                            SizedBox(
                                              width: 70,
                                            ),
                                            Text(
                                              "Total Amount:",
                                              style: TextStyle(
                                                  color: Color(0xff222222),
                                                  fontSize: 16,
                                                  fontFamily: 'MetroPolies'),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            ForgetCustom(
                                              text: '${item.totalAmount}\$',
                                              fontSize: 14,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 10),
                                        child: Row(
                                          children: [
                                            ElevatedButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              OrderDetails(order: item,)));
                                                },
                                                style: ElevatedButton.styleFrom(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    fixedSize: Size(104, 40),
                                                    side: BorderSide(
                                                        color: Colors.black),
                                                    backgroundColor:
                                                        Colors.white),
                                                child: ForgetCustom(
                                                  text: 'Details',
                                                  fontSize: 14,
                                                  color: Colors.black,
                                                )),
                                            SizedBox(
                                              width: 125,
                                            ),
                                            Text(
                                              "Processing",
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontSize: 14,
                                                  fontFamily: 'MetroPolies'),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                    Center(
                      child: ListView.builder(
                          itemCount: modelOrders.length,
                          itemBuilder: (context, index) {
                            var item = modelOrders[index];
                            return Container(
                              width: 343,
                              height: 220,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 20),
                                child: Card(
                                  color: Colors.white,
                                  elevation: 3,
                                  shadowColor: Colors.grey,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 10),
                                        child: Row(
                                          children: [
                                            ForgetCustom(
                                              text: '${item.orderNumber}',
                                              fontSize: 16,
                                            ),
                                            SizedBox(
                                              width: 80,
                                            ),
                                            Text(
                                              item.date,
                                              style: TextStyle(
                                                  color: Color(0xff222222),
                                                  fontSize: 16,
                                                  fontFamily: 'MetroPolies'),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 10),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Tracking number:",
                                              style: TextStyle(
                                                  color: Color(0xff222222),
                                                  fontSize: 16,
                                                  fontFamily: 'MetroPolies'),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            ForgetCustom(
                                              text: '${item.trackNumber}',
                                              fontSize: 14,
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 0, horizontal: 10),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Quantity:",
                                              style: TextStyle(
                                                  color: Color(0xff222222),
                                                  fontSize: 16,
                                                  fontFamily: 'MetroPolies'),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            ForgetCustom(
                                              text: '${item.quantity}',
                                              fontSize: 14,
                                            ),
                                            SizedBox(
                                              width: 70,
                                            ),
                                            Text(
                                              "Total Amount:",
                                              style: TextStyle(
                                                  color: Color(0xff222222),
                                                  fontSize: 16,
                                                  fontFamily: 'MetroPolies'),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            ForgetCustom(
                                              text: '${item.totalAmount}\$',
                                              fontSize: 14,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 10),
                                        child: Row(
                                          children: [
                                            ElevatedButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              OrderDetails(order: item,)));
                                                },
                                                style: ElevatedButton.styleFrom(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    fixedSize: Size(104, 40),
                                                    side: BorderSide(
                                                        color: Colors.black),
                                                    backgroundColor:
                                                        Colors.white),
                                                child: ForgetCustom(
                                                  text: 'Details',
                                                  fontSize: 14,
                                                  color: Colors.black,
                                                )),
                                            SizedBox(
                                              width: 125,
                                            ),
                                            Text(
                                              "Cancelled",
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontSize: 14,
                                                  fontFamily: 'MetroPolies'),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
