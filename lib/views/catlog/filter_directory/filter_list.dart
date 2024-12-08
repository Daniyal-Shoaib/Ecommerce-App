import 'package:flutter/material.dart';

class FilterList extends StatefulWidget {
  const FilterList({super.key});

  @override
  State<FilterList> createState() => _FilterListState();
}

class _FilterListState extends State<FilterList> {
  // List of brand categories
  List<String> brandCategories = [
    "adidas",
    "adidas Originals",
    "Blend",
    "Boutique Moschino",
    "Champion",
    "Diesel",
    "Jack & Jones",
    "Naf Naf",
    "Red Valentino",
    "s.Oliver"
  ];

  // State for selected items
  List<String> selectedBrands = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Brand"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          // Brand List
          Expanded(
            child: ListView.builder(
              itemCount: brandCategories.length,
              itemBuilder: (context, index) {
                final brand = brandCategories[index];

                return ListTile(
                  title: Text(
                    brand,
                    style: TextStyle(
                      color: selectedBrands.contains(brand)
                          ? Colors.red
                          : Colors.black,
                      fontWeight: selectedBrands.contains(brand)
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                  trailing: Checkbox(
                    value: selectedBrands.contains(brand),
                    onChanged: (value) {
                      setState(() {
                        if (value == true) {
                          selectedBrands.add(brand);
                        } else {
                          selectedBrands.remove(brand);
                        }
                      });
                    },
                    activeColor: Colors.red,
                  ),
                  onTap: () {
                    setState(() {
                      if (selectedBrands.contains(brand)) {
                        selectedBrands.remove(brand);
                      } else {
                        selectedBrands.add(brand);
                      }
                    });
                  },
                );
              },
            ),
          ),
          const   Divider(
            color: Colors.grey,
            thickness: 0.5,
          ),
          const SizedBox(height: 10),
          Container(
            width: 375,
            height: 104,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 160,
                    height: 36,
                    child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 1,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                  color: Colors.black
                              ),
                            )
                        ),
                        child: const Text(
                          "Discard",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.black),
                        )),
                  ),
                  SizedBox(width: 10,),
                  SizedBox(
                    width: 160,
                    height: 36,
                    child: ElevatedButton(

                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            elevation: 1,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: const BorderSide(
                                  color: Colors.transparent
                              ),
                            )
                        ),
                        child: const Text(
                          "Apply",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.white),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
