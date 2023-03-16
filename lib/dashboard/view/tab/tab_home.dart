import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/dashboard/category/cat_model.dart';

class TabHome extends StatefulWidget {
  const TabHome({super.key});

  @override
  State<TabHome> createState() => _TabHomeState();
}

class _TabHomeState extends State<TabHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/home_img/first.png'),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
            height: 200,
            color: Colors.transparent,
            width: double.infinity,
            child: CarouselSlider(
              options: CarouselOptions(height: 400.0),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration:
                            const BoxDecoration(color: Colors.transparent),
                        child: Image.network(
                            'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,metadata=none,w=360/layout-engine/2023-03/ice-cream_WEB.jpg'));
                  },
                );
              }).toList(),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Popolar Items',
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
                  return Card(
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
                          CachedNetworkImage(
                            height: 100,
                            width: 100,
                            imageUrl: popitems[index].image,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Center(
                            child: Text(
                              popitems[index].name,
                              style: const TextStyle(fontWeight: FontWeight.bold,),
                            ),
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
