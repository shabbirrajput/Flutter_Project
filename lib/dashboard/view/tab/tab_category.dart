import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/dashboard/category/cat_model.dart';
import 'package:shopping_app/dashboard/category/subcategory/atta_flour.dart';

class TabCategory extends StatefulWidget {
  const TabCategory({Key? key}) : super(key: key);

  @override
  State<TabCategory> createState() => _TabCategoryState();
}

class _TabCategoryState extends State<TabCategory> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 10.0, left: 20.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Category',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black45),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.builder(
              itemCount: items.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AttaFlour()));
                  },
                  child: Card(
                    child: Container(
                      padding: const EdgeInsets.only(top: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey.withOpacity(0.4),
                            spreadRadius: 3,
                            blurRadius: 5.0,
                          )
                        ],
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          CachedNetworkImage(
                            height: 100,
                            width: 100,
                            imageUrl: items[index].image,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            items[index].name,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          // Text("\$${items[index].price.toStringAsFixed(2)}"),
                          //  SizedBox(
                          //      height: 25,
                          //      width: 90,
                          //      child: ElevatedButton.icon(
                          //        onPressed:  () {
                          //
                          //        },
                          //        style: ElevatedButton.styleFrom(
                          //            backgroundColor: Colors.deepPurpleAccent),
                          //        icon: const Icon(Icons.shopping_cart),
                          //        label: const Text(
                          //          "Add",
                          //          style: TextStyle(color: Colors.white),
                          //        ), //label text
                          //      )),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
