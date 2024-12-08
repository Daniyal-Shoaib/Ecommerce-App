import 'package:ecommerce_app/custom_widget/forget_custom.dart';
import 'package:ecommerce_app/helpers/app_images_path.dart';
import 'package:ecommerce_app/views/oders_details/my_oder.dart';
import 'package:ecommerce_app/views/oders_details/payment_method.dart';
import 'package:ecommerce_app/views/profile/model.dart';
import 'package:ecommerce_app/views/profile/myProfile_sitting.dart';
import 'package:ecommerce_app/views/shipping_addresses/check_out.dart';

import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  final List<Widget> screen = [
    // MyOrdersScreen(),
    // ShippingAddressesScreen(),
    // PaymentMethodsScreen(),
    // PromoCodesScreen(),
    // MyReviewsScreen(),
    // SettingsScreen(),
   const  MyOrder(),
   const  CheckOut(),
   const  PaymentMethod(),
    const MyProfileSitting(),
   const  MyProfileSitting(),
    const MyProfileSitting(),

  ];
  final List<ModelProfile> itemList = [
    ModelProfile(
        title: "My orders",
        subtitle: "Already have 12 orders",
        iconUrl: AppImagesPath.chevron_right),
    ModelProfile(
        title: "Shipping addresses",
        subtitle: "3 addresses",
        iconUrl: AppImagesPath.chevron_right),
    ModelProfile(
        title: "Payment methods",
        subtitle: "Visa  **34",
        iconUrl: AppImagesPath.chevron_right),
    ModelProfile(
        title: "Promo-codes",
        subtitle: "You have special promo codes",
        iconUrl: AppImagesPath.chevron_right),
    ModelProfile(
        title: "My reviews",
        subtitle: "Reviews for 4 items",
        iconUrl: AppImagesPath.chevron_right),
    ModelProfile(
        title: "Settings",
        subtitle: "Notifications, password",
        iconUrl: AppImagesPath.chevron_right),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(
              right: 20,
            ),
            child: Icon(
              Icons.search,
              size: 24,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: ForgetCustom(
              text: 'My profile',
              fontSize: 34,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
                leading: ClipOval(
                  child: Image(
                      image: AssetImage(
                    AppImagesPath.myProfile,
                  )),
                ),
                title: const ForgetCustom(
                  text: 'Matilda Brown',
                  fontSize: 18,
                  color: Colors.black,
                ),
                subtitle: const Text(
                  "matildabrown@mail.com",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )),
          ),

          Expanded(
            child: ListView.builder(
                itemCount: itemList.length,
                itemBuilder: (context, index) {
                  final item = itemList[index];
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          title: ForgetCustom(
                            text: item.title,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          subtitle: Text(
                            item.subtitle,
                            style: const TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          trailing: Image(image: AssetImage(item.iconUrl)),
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context)=>screen[index]
                                )
                            );
                          },
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                          height: 0.1
                      ),
                    ],
                  );
                }),
          ),

        ],
      ),
    );
  }
}
