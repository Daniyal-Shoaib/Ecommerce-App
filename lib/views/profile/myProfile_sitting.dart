import 'package:ecommerce_app/custom_widget/forget_custom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyProfileSitting extends StatefulWidget {
  const MyProfileSitting({super.key});

  @override
  State<MyProfileSitting> createState() => _MyProfileSittingState();
}

class _MyProfileSittingState extends State<MyProfileSitting> {
  bool isTrueOne = false;
  bool isTrueTwo = true;
  bool isTrueThree = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const ForgetCustom(
              text: 'Settings',
              fontSize: 34,
              color: Colors.black,
            ),
            const ForgetCustom(
              text: 'Personal Information',
              fontSize: 16,
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 343,
              height: 64,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 20, top: 10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Full Name',
                    hintStyle: TextStyle(color: Color(0xff9B9B9B)),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 343,
              height: 64,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 20, top: 10),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Date of Birth',
                    labelStyle: TextStyle(
                      color: Color(0xff9B9B9B),
                    ),
                    hintText: '12/12/1989',
                    hintStyle: TextStyle(color: Colors.black),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Row(
              children: [
                const ForgetCustom(
                  text: 'Password',
                  fontSize: 16,
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 200,
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            width: 375,
                            height: 472,
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 60,
                                  height: 6,
                                  decoration: BoxDecoration(
                                      color: const Color(0xff979797),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const ForgetCustom(
                                  text: 'Password Change',
                                  fontSize: 18,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: 343,
                                  height: 64,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.only(left: 20, top: 10),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: 'Old Password',
                                        hintStyle:
                                            TextStyle(color: Color(0xff9B9B9B)),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){},
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                          padding:
                                              EdgeInsets.only(right: 20, top: 10),
                                          child: ForgetCustom(
                                              text: 'Forgot Password?')),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  width: 343,
                                  height: 64,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.only(left: 20, top: 10),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: 'New Password',
                                        hintStyle:
                                            TextStyle(color: Color(0xff9B9B9B)),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: 343,
                                  height: 64,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.only(left: 20, top: 10),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: 'Repeat New Password',
                                        hintStyle:
                                            TextStyle(color: Color(0xff9B9B9B)),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 60,
                                ),
                                ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        fixedSize: const Size(343, 48),
                                        backgroundColor: Colors.red,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(35))),
                                    child: const Text(
                                      "SAVE PASSWORD",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ))
                              ],
                            ),
                          );
                        });
                  },
                  child: const ForgetCustom(
                    text: 'Change',
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 343,
              height: 64,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 20, top: 10),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: Color(0xff9B9B9B),
                    ),
                    hintText: '************',
                    hintStyle: TextStyle(color: Colors.black),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const ForgetCustom(
              text: 'Notifications',
              fontSize: 17,
              color: Colors.black,
            ),
            const SizedBox(
              height: 30,
            ),
            SwitchListTile(
                value: isTrueOne,
                title: const ForgetCustom(
                  text: 'Sales',
                  fontSize: 14,
                ),
                activeColor: Colors.green,
                inactiveTrackColor: const Color(0xff9B9B9B),
                inactiveThumbColor: Colors.white,
                onChanged: (bool values) {
                  setState(() {
                    isTrueOne = values;
                  });
                }),
            SwitchListTile(
                value: isTrueTwo,
                title: const ForgetCustom(
                  text: 'New arrivals',
                  fontSize: 14,
                ),
                activeColor: Colors.green,
                inactiveTrackColor: const Color(0xff9B9B9B),
                inactiveThumbColor: Colors.white,
                onChanged: (bool values) {
                  setState(() {
                    isTrueTwo = values;
                  });
                }),
            SwitchListTile(
                value: isTrueThree,
                title: const ForgetCustom(
                  text: 'Delivery status changes',
                  fontSize: 14,
                ),
                //  activeColor: Colors.red,
                activeColor:
                    Colors.green, // Green thumb color for the active state
                activeTrackColor:
                    const Color(0xFF9B9B9B), // Gray track for the active state
                inactiveThumbColor:
                    Colors.white, // White thumb color for the inactive state
                inactiveTrackColor: const Color(0xFF9B9B9B),
                onChanged: (bool values) {
                  setState(() {
                    isTrueThree = values;
                  });
                })
          ],
        ),
      ),
    );
  }
}
