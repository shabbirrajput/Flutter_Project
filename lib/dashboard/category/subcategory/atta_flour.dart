import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/dashboard/category/cat_model.dart';

class AttaFlour extends StatefulWidget {
  const AttaFlour({Key? key}) : super(key: key);

  @override
  State<AttaFlour> createState() => _AttaFlourState();
}

class _AttaFlourState extends State<AttaFlour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                itemCount: subCatItem.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height / 4),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Container(
                      // padding: const EdgeInsets.only(top: 5),
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
                          CachedNetworkImage(
                            height: 100,
                            width: 100,
                            imageUrl: subCatItem[index].image,
                          ),
                          // const SizedBox(
                          //   height: 15,
                          // ),
                          Center(
                            child: Text(
                              subCatItem[index].name,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                              "\$${subCatItem[index].price.toStringAsFixed(2)}"),
                          SizedBox(
                              height: 35,
                              width: 90,
                              child: OutlinedButton.icon(
                                onPressed: () {},

                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.deepPurpleAccent),
                                icon: const Icon(Icons.shopping_cart),
                                label: const Text(
                                  "Add",
                                  style: TextStyle(color: Colors.white),
                                ), //label text
                              )),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
