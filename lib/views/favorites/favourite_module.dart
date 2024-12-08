import 'package:ecommerce_app/custom_widget/forget_custom.dart';
import 'package:ecommerce_app/helpers/app_images_path.dart';
import 'package:ecommerce_app/views/catlog/filter_directory/filter.dart';
import 'package:ecommerce_app/views/catlog/grid_directory/grid_item_class.dart';
import 'package:ecommerce_app/views/catlog/list_directory/listItemClass.dart';
import 'package:ecommerce_app/views/favorites/fabModel.dart';
import 'package:flutter/material.dart';
class FavouriteModule extends StatefulWidget {
  const FavouriteModule({super.key});

  @override
  State<FavouriteModule> createState() => _FavouriteModuleState();
}

class _FavouriteModuleState extends State<FavouriteModule> {
  AppImagesPath appImagesPath = AppImagesPath();
  List<FabModel> fabModel=[
       FabModel( name: 'T-shirts',),
       FabModel( name: 'Crop tops',),
       FabModel( name: 'Sleeveless',),
       FabModel( name: 'Blouses',),
  ];
  bool isGridView = true;
  bool isLowToHigh = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:  AppBar(
        automaticallyImplyLeading: false,
        title: const ForgetCustom(
          text: 'Favorites',
          fontSize: 22,
          color: Color(0xff222222),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.search,
              size: 24,
              color: Colors.black,
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 30,
                    width: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: fabModel.length,
                      itemBuilder: (context, index) {
                        final item = fabModel[index];
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8.0),
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            item.name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 10,right: 10),
            child: Container(
              color: Colors.white54,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context)=> FilterScreen()
                          )
                      );
                    },
                    child: const Icon(
                      Icons.filter_list_rounded,
                      size: 24,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text("Filter",style: TextStyle(
                    fontSize: 14,
                  ),),
                  const SizedBox(
                    width: 40,
                  ),
                  GestureDetector(
                    onTap: (){
                      isLowToHigh = !isLowToHigh;
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context){
                            return SizedBox(
                              width: 375,
                              height: 352,
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const  SizedBox(height: 10,),
                                    Center(
                                      child: Container(
                                        width: 60,
                                        height: 6,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    const  SizedBox(height: 15,),
                                    const  Center(
                                      child: const  ForgetCustom(
                                        text: 'Sort By',
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                    ),
                                    const SizedBox(height: 15,),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: TextButton(
                                          onPressed: (){}, child:const Text("Popular",style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                        ),),)
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: TextButton(
                                          onPressed: (){}, child:const Text("Newest",style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                        ),),)
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child:  TextButton(
                                        onPressed: (){}, child:const Text("Customer review",style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16,
                                      ),),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child:  TextButton(
                                        onPressed: (){
                                        }, child:const Text("Price: lowest to high",style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16,
                                      ),),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child:  TextButton(
                                        onPressed: (){
                                        }, child:const Text("Price: highest to low",style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16,
                                      ),),),
                                    ),

                                  ],
                                ),
                              ),
                            );
                          }
                      );
                      setState(() {
                      });
                    },
                    child: Image(

                      image: AssetImage(AppImagesPath.compare_swap),
                      width: 20,
                      height: 20,
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Text(
                    isLowToHigh ? 'Price: Low to High' : 'Price: High to Low',
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(width: 30,),
                  IconButton(
                      onPressed: (){
                        isGridView = !isGridView;
                        setState(() {

                        });
                      },
                      icon: Icon(
                        isGridView ? Icons.grid_view : Icons.list_outlined,
                      )
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Expanded(
            child: isGridView ? const GridItemClass() : const ListItemClass(),
          )
        ],
      ),
    );
  }
}
