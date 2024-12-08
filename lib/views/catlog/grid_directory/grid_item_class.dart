import 'package:ecommerce_app/helpers/app_images_path.dart';
import 'package:ecommerce_app/views/catlog/grid_directory/grid_view_model.dart';
import 'package:flutter/material.dart';

class GridItemClass extends StatefulWidget {
  const GridItemClass({super.key});

  @override
  State<GridItemClass> createState() => _GridItemClassState();
}

class _GridItemClassState extends State<GridItemClass> {
  final List<ProductGrid> productList = [
    ProductGrid(
      title: 'T-Shirt SPANISH',
      brand: 'Mango',
      price: 9.0,
      originalPrice: null,
      imageUrl: AppImagesPath.photoCatalog_one,
      rating: 3.5,
      reviews: 3,
      isFavorite: false,
      hasDiscount: false,
    ),
    ProductGrid(
      title: 'Blouse',
      brand: 'Dorothy Perkins',
      price: 25.0,
      originalPrice: 21.0,
      imageUrl: AppImagesPath.cat_two,
      rating: 4.5,
      reviews: 10,
      isFavorite: false,
      hasDiscount: true,
    ),
    ProductGrid(
      title: 'Shirt',
      brand: 'Mango',
      price: 30.0,
      originalPrice: null,
      imageUrl: AppImagesPath.cat_two,
      rating: 0.0,
      reviews: 0,
      isFavorite: false,
      hasDiscount: false,
    ),
    ProductGrid(
      title: 'Light blouse',
      brand: 'Dorothy Perkins',
      price: 25.0,
      originalPrice: 40.0,
      imageUrl: AppImagesPath.photoCatalog_one,
      rating: 4.5,
      reviews: 10,
      isFavorite: false,
      hasDiscount: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child:GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 10,
            childAspectRatio: 0.55,
          ),
          itemCount: productList.length,
          itemBuilder: (context, index) {
            final item = productList[index];
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  item.hasDiscount == true
                      ? Stack(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(15),
                        ),
                        child: Image(
                          image: AssetImage(
                            item.imageUrl,
                          ),
                          width: double.infinity,
                          height: 184,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          left: 135,
                          child: GestureDetector(
                            onTap: () {
                              item.isFavorite = !item.isFavorite;
                              setState(() {});
                            },
                            child: Container(
                              width: 36,
                              height: 36,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.circular(20)),
                              child: item.isFavorite
                                  ? const Icon(
                                Icons.favorite,
                                color: Colors.red,
                              )
                                  : const Icon(
                                Icons.favorite_outline,
                                color: Colors.grey,
                              ),
                            ),
                          )),
                      Positioned(
                          left: 5,
                          top: 5,
                          child: Container(
                            width: 40,
                            height: 24,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                                child: Text(
                                  "-${(item.price).toInt()}%",
                                  style: const TextStyle(color: Colors.white),
                                )),
                          ))
                    ],
                  )
                      : Stack(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(15),
                        ),
                        child: Image(
                          image: AssetImage(
                            item.imageUrl,
                          ),
                          width: double.infinity,
                          height: 184,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          left: 135,
                          child: GestureDetector(
                            onTap: () {
                              item.isFavorite = !item.isFavorite;
                              setState(() {});
                            },
                            child: Container(
                              width: 36,
                              height: 36,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.circular(20)),
                              child: item.isFavorite
                                  ? const Icon(
                                Icons.favorite,
                                color: Colors.red,
                              )
                                  : const Icon(
                                Icons.favorite_outline,
                                color: Colors.grey,
                              ),
                            ),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Row(
                          children: List.generate(
                            5,
                                (starIndex) => starIndex < item.rating
                                ? const Icon(Icons.star,
                                color: Colors.amber, size: 20)
                                : const Icon(Icons.star_border,
                                color: Colors.grey, size: 20),
                          )),
                      Text(
                        "(${(item.reviews)})",
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        (item.brand),
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        (item.title),
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  item.originalPrice != null
                      ? Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const  SizedBox(width: 5,),

                      Text("\$${(item.originalPrice )}",
                          style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              decoration: TextDecoration.lineThrough)),
                      SizedBox(width: 5,),
                      Text("\$${(
                          item.price.toInt()
                      )}",
                        style: const TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  )
                      : Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const  SizedBox(width: 5,),
                      Text("${(item.price).toInt()}\$",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        )
      ),
    );
  }
}

