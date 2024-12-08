import 'package:ecommerce_app/custom_widget/forget_custom.dart';
import 'package:ecommerce_app/helpers/app_images_path.dart';
import 'package:ecommerce_app/views/oders_details/model_order.dart';
//import 'package:ecommerce_app/views/oders_details/ProductItem.dart';
import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {
  final ModelOrder order;
  const OrderDetails({super.key, required this.order});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  List<ProductItem> productItem = [
    ProductItem(
        name: 'Pullover',
        brand: "Mango",
        color: "Gray",
        size: "L",
        units: 1,
        price: 51
    ),
    ProductItem(
        name: 'Pullover',
        brand: "Mango",
        color: "Gray",
        size: "L",
        units: 1,
        price: 51
    ),
    ProductItem(
        name: 'Pullover',
        brand: "Mango",
        color: "Gray",
        size: "L",
        units: 1,
        price: 51
    ),
  ];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child:
              const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.search, color: Colors.black),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25,top: 25),
            child: Row(
              
              children: [
                ForgetCustom(
                  text: "${widget.order.orderNumber}",
                  fontSize: 16,
                ),
                SizedBox(width: 135,),
                Text("${widget.order.date}",style: TextStyle(fontSize: 14),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25,top: 25),
            child: Row(

              children: [
                Text("Tracking number:",style: TextStyle(
                  fontSize: 14,
                ),),
                SizedBox(width: 5,),
                ForgetCustom(text: '${widget.order.trackNumber}',fontSize: 14,),
                SizedBox(width: 50,),
                Text("Delivered",style: TextStyle(
                  fontSize: 14,
                  color: Colors.green,

                ),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 295,top: 25),
            child:ForgetCustom(text: '${widget.order.quantity} item',fontSize: 14,)
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: productItem.length,
                  itemBuilder: (context,index){
                    var item = productItem[index];
                    return Padding(
                      padding: const EdgeInsets.only(left: 25,top: 10,bottom: 10),
                      child: Row(
                        children: [
                          Container(
                            width: 104,
                            height: 120,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                  image: AssetImage(AppImagesPath.pullover)
                              )

                            ),
                          ),
                          Container(
                            width: 250,
                            height: 120,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              )
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10,top: 5),
                                  child: ForgetCustom(text: "${item.name}",fontSize: 14,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10,top: 5),
                                  child: Text("${item.brand}"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10,top: 5),
                                  child: Row(
                                    children: [
                                      Text("Color: ",style: TextStyle(fontSize: 14),),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 2),
                                        child: ForgetCustom(text:"${item.color}",fontSize: 14,),
                                      ),
                                      SizedBox(width: 80,),
                                      Text("Size: ",style: TextStyle(fontSize: 14),),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 2),
                                        child: ForgetCustom(text:"${item.size}",fontSize: 14,),
                                      ),
                                    ],
                                  )
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10,top: 5),
                                  child: Row(
                                    children: [
                                      Text("Unit: ",style: TextStyle(fontSize: 14),),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 2),
                                        child: ForgetCustom(text:"${item.units}",fontSize: 14,),
                                      ),
                                      SizedBox(width: 80,),

                                      Padding(
                                        padding: const EdgeInsets.only(top: 2,left: 37),
                                        child: ForgetCustom(text:"${item.price}\$",fontSize: 14,),
                                      ),
                                    ],
                                  )
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }
              )
          ),

        ],
      ),
    );
  }
}
