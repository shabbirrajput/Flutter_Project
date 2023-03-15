import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/dashboard/category/cat_model.dart';
import 'package:shopping_app/dashboard/category/category_model.dart';

class TabHome extends StatefulWidget {
  const TabHome({super.key});

  @override
  State<TabHome> createState() => _TabHomeState();
}

class _TabHomeState extends State<TabHome> {
  List<CategoryModel> mCategoryModel = [];

  get index => 1;

  @override
  void initState() {
    setData();
    super.initState();
  }

  void setData() {
    CategoryModel mCategoryModelData = CategoryModel();
    mCategoryModelData.image =
        'data:image/jpeg;base64,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';
    mCategoryModelData.name = 'Amul Gold';
    mCategoryModelData.price = '\$10';

    mCategoryModel.add(mCategoryModelData);

    mCategoryModelData = CategoryModel();
    mCategoryModelData.image =
        'https://www.bigbasket.com/media/uploads/p/xxl/306926-2_4-amul-homogenised-toned-milk.jpg';
    mCategoryModelData.name = 'Amul Taaza';
    mCategoryModelData.price = '\$12';

    mCategoryModel.add(mCategoryModelData);

    setState(() {});
  }

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
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 3,
                        blurRadius: 5.0)
                  ],
                  color: Colors.white,
                ),
                child: GridView.builder(
                  itemCount: items.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      borderOnForeground: true,
                      child: Column(
                        children: [
                          Image.network(
                            items[index].image,
                            height: 100,
                            width: 100,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            items[index].name,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          //   Text("\$${items[index].price.toStringAsFixed(2)}"),
                          //    SizedBox(
                          //        height: 25,
                          //        width: 130,
                          //        child: ElevatedButton.icon(
                          //          onPressed: () {
                          //            if (kDebugMode) {
                          //              print("Added");
                          //            }
                          //          },
                          //          style: ElevatedButton.styleFrom(
                          //              backgroundColor: Colors.deepPurpleAccent),
                          //          icon: const Icon(Icons.shopping_cart),
                          //          label: const Text(
                          //            "Add to cart",
                          //            style: TextStyle(color: Colors.white),
                          //          ), //label text
                          //        )),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
