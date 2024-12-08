import 'package:ecommerce_app/custom_widget/forget_custom.dart';
import 'package:ecommerce_app/helpers/app_images_path.dart';
import 'package:ecommerce_app/views/myBag/bagModel.dart';

import 'package:flutter/material.dart';

class MyBagOne extends StatefulWidget {
  const MyBagOne({super.key});

  @override
  State<MyBagOne> createState() => _MyBagOneState();
}

class _MyBagOneState extends State<MyBagOne> {
  final TextEditingController _promoCodeController = TextEditingController();
  int? counter = 1;
  List<ModelBag> modelBag = [
    ModelBag(
        name: 'Pullover',
        img: AppImagesPath.pullover,
        color: 'Black',
        size: 'L',
        quantity: 1,
        totalAmount: 51),
    ModelBag(
        name: 'T-Shirt',
        img: AppImagesPath.pullover,
        color: 'Gray',
        size: 'L',
        quantity: 1,
        totalAmount: 30),
    ModelBag(
        name: 'Sport Dress',
        img: AppImagesPath.pullover,
        color: 'Black',
        size: 'L',
        quantity: 1,
        totalAmount: 43),
  ];
  List<PromoOffer> promoOffer = [
    PromoOffer(
      discount: AppImagesPath.discount,
      title: 'Personal offer',
      promoCode: "promocode2020",
      remainingTime: "6 days remaining",
      buttonText: 'Apply',

    ),
    PromoOffer(
      discount: AppImagesPath.discount_15,
      title: 'Summer Sale',
      promoCode: "summer2020",
      remainingTime: "9 days remaining",
      buttonText: 'Apply',
    ),
    PromoOffer(
      discount: AppImagesPath.discount,
      title: 'Personal offer',
      promoCode: "promocode2020",
      remainingTime: "7 days remaining",
      buttonText: 'Apply',
    )
  ];
  int itemCount = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ForgetCustom(
              text: 'My Bag',
              fontSize: 34,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: modelBag.length,
                    itemBuilder: (context, index) {
                      var item = modelBag[index];
                      return Padding(
                        padding:
                            const EdgeInsets.only(left: 0, top: 10, bottom: 10),
                        child: Row(
                          children: [
                            Container(
                              width: 104,
                              height: 120,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage(AppImagesPath.pullover))),
                            ),
                            Container(
                              width: 230,
                              height: 120,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  )),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 4),
                                        child: ForgetCustom(
                                          text: item.name,
                                          fontSize: 16,
                                        ),
                                      ),
                                      PopupMenuButton<int>(
                                        onSelected: (value) {
                                          if (value == 0) {
                                            print("Add to favorites clicked");
                                          } else if (value == 1) {
                                            print(
                                                "Delete from the list clicked");
                                          }
                                        },
                                        itemBuilder: (context) => [
                                          // First menu item
                                          PopupMenuItem(
                                            value: 0,
                                            child: Padding(
                                              padding: const EdgeInsets
                                                  .symmetric(
                                                  vertical:
                                                      8.0), // Adds vertical spacing
                                              child: Text(
                                                "Add to favorites",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight
                                                        .w400), // Match the design
                                              ),
                                            ),
                                          ),
                                          // Divider
                                          PopupMenuDivider(height: 1),
                                          // Second menu item
                                          PopupMenuItem(
                                            value: 1,
                                            child: Padding(
                                              padding: const EdgeInsets
                                                  .symmetric(
                                                  vertical:
                                                      8.0), // Adds vertical spacing
                                              child: Text(
                                                "Delete from the list",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight
                                                        .w400), // Match the design
                                              ),
                                            ),
                                          ),
                                        ],
                                        icon: Icon(
                                          Icons.more_vert,
                                          color: Colors.grey,
                                        ),
                                        // Customize popup appearance
                                        offset: Offset(-35,
                                            -20), // Position the popup slightly below the icon
                                        color: Colors
                                            .white, // Background color of popup
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              10), // Rounded corners
                                        ),
                                        elevation:
                                            4, // Subtle shadow for better visibility
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text("Color: "),
                                      ForgetCustom(text: '${item.color}'),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text("Size: "),
                                      ForgetCustom(text: '${item.size}'),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .start, // Centers the Row itself
                                    children: [
                                      SizedBox(
                                        width: 40,
                                        height: 40,
                                        child: Card(
                                          color: Colors.white,
                                          elevation: 3,
                                          shape: CircleBorder(),
                                          child: Center(
                                              child: GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      if (item.quantity <= 0) {}
                                                      item.quantity++;
                                                    });
                                                  },
                                                  child: Icon(Icons.add))),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      ForgetCustom(
                                        text: '${item.quantity}',
                                        fontSize: 18,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox(
                                        width: 40,
                                        height: 40,
                                        child: Card(
                                            color: Colors.white,
                                            elevation: 3,
                                            shape: CircleBorder(),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 13, left: 4),
                                                  child: GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          if (item.quantity >
                                                              0) {
                                                            item.quantity--;
                                                          }
                                                        });
                                                      },
                                                      child:
                                                          Icon(Icons.maximize)),
                                                ),
                                              ],
                                            )),
                                      ),
                                      SizedBox(
                                        width: 75,
                                      ),
                                      ForgetCustom(
                                        text: '${item.totalAmount}\$',
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    })),
            SizedBox(
              width: 343,
              height: 60,
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 5,
                ),
                child: Card(
                  elevation: 3,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 3.5),
                    child: TextField(
                      controller: _promoCodeController,
                      decoration: InputDecoration(
                        hintText: 'Enter your promo code',
                        hintStyle: TextStyle(color: Color(0xff9B9B9B), fontSize: 14),
                        suffixIcon: _promoCodeController.text.isEmpty
                            ? GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  width: 375,
                                  height: 472,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 10),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 160),
                                        child: Container(
                                          width: 60,
                                          height: 6,
                                          decoration: BoxDecoration(
                                            color: const Color(0xff979797),
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      Center(
                                        child: Container(
                                          width: 343,
                                          height: 36,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: TextField(
                                            controller: _promoCodeController,
                                            decoration: InputDecoration(
                                              contentPadding: EdgeInsets.only(left: 10),
                                              hintText: 'Enter your promo code',
                                              hintStyle: TextStyle(
                                                color: Color(0xff9B9B9B),
                                                fontSize: 14,
                                              ),
                                              suffixIcon: Container(
                                                width: 30,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  borderRadius: BorderRadius.circular(30),
                                                ),
                                                child: Icon(
                                                  Icons.arrow_forward,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              border: InputBorder.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: ForgetCustom(
                                          text: 'Your Promo Code',
                                          fontSize: 18,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Expanded(
                                        child: ListView.builder(
                                          itemCount: promoOffer.length,
                                          itemBuilder: (context, index) {
                                            var item = promoOffer[index];
                                            return Padding(
                                              padding: const EdgeInsets.only(left: 20),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Container(
                                                        width: 80,
                                                        height: 100,
                                                        decoration: BoxDecoration(
                                                          color: index == 0
                                                              ? Colors.red
                                                              : index == 1
                                                              ? Colors.white
                                                              : Colors.black,
                                                          borderRadius: BorderRadius.only(
                                                            bottomLeft: Radius.circular(10),
                                                            topLeft: Radius.circular(10),
                                                          ),
                                                          image: DecorationImage(
                                                            image: AssetImage(item.discount),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 250,
                                                        height: 100,
                                                        decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius: BorderRadius.only(
                                                            bottomRight: Radius.circular(5),
                                                            topRight: Radius.circular(5),
                                                          ),
                                                        ),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment.start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                              const EdgeInsets.only(left: 130),
                                                              child: Text(item.remainingTime),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left: 10),
                                                              child: ForgetCustom(text: '${item.title}'),
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(width: 10),
                                                                Text("${item.promoCode}"),
                                                                index == 1
                                                                    ? SizedBox(width: 45)
                                                                    : SizedBox(width: 25),
                                                                ElevatedButton(
                                                                  onPressed: () {
                                                                    _promoCodeController.text =
                                                                        item.promoCode;
                                                                    Navigator.pop(context); // Close the bottom sheet
                                                                  },
                                                                  style: ElevatedButton.styleFrom(
                                                                    backgroundColor: Colors.red,
                                                                    fixedSize: Size(93, 36),
                                                                  ),
                                                                  child: Text(
                                                                    item.buttonText,
                                                                    style: TextStyle(
                                                                      color: Colors.white,
                                                                    ),
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 10),
                                                ],
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          child: Container(
                            width: 36,
                            height: 36,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ),
                        )
                            : GestureDetector(
                          onTap: () {
                            setState(() {

                            });
                            _promoCodeController.clear(); // Clear the text when X icon is tapped
                          },
                          child: Icon(
                            Icons.clear,
                            color: Colors.black,
                          ),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Amount:",
                    style: TextStyle(fontSize: 14, color: Color(0xff9B9B9B)),
                  ),
                  ForgetCustom(text: '150\$')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(343, 48),
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35))),
                  child: const Text(
                    "CHECK OUT",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
