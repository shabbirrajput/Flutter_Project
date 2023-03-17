import 'package:flutter/material.dart';
import 'package:shopping_app/dashboard/view/tab/tab_account.dart';
import 'package:shopping_app/dashboard/view/tab/tab_cart.dart';
import 'package:shopping_app/dashboard/view/tab/tab_category.dart';
import 'package:shopping_app/dashboard/view/tab/tab_home.dart';

class ScreenDashboard extends StatefulWidget {
  const ScreenDashboard({Key? key}) : super(key: key);

  @override
  State<ScreenDashboard> createState() => _ScreenDashboardState();
}

class _ScreenDashboardState extends State<ScreenDashboard> {
  late var _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(
      //   child: ListView(
      //     padding: const EdgeInsets.all(0),
      //     children: [
      //       const DrawerHeader(
      //         decoration: BoxDecoration(
      //           color: Colors.deepPurpleAccent,
      //         ), //BoxDecoration
      //         child: UserAccountsDrawerHeader(
      //           decoration: BoxDecoration(color: Colors.deepPurpleAccent),
      //           accountName: Text(
      //             "Shabbir Rajput",
      //             style: TextStyle(fontSize: 18),
      //           ),
      //           accountEmail: Text("Shabbirrajput@gmail.com"),
      //           currentAccountPictureSize: Size.square(50),
      //           currentAccountPicture: CircleAvatar(
      //             backgroundColor: Colors.white,
      //             child: Text(
      //               "S",
      //               style:
      //               TextStyle(fontSize: 30.0, color: Colors.deepPurple),
      //             ), //Text
      //           ), //circleAvatar
      //         ), //UserAccountDrawerHeader
      //       ), //DrawerHeader
      //       ListTile(
      //         leading: const Icon(Icons.person),
      //         title: const Text(' My Profile '),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.logout),
      //         title: const Text('LogOut'),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //     ],
      //   ),
      // ),
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          TabHome(),
          TabCategory(),
          CartPage(),
          TabAccount(),
        ],
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Grocery App'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.deepPurpleAccent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        elevation: 5,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Category',
            icon: Icon(Icons.category),
          ),
          BottomNavigationBarItem(
            label: 'Cart',
            icon: Icon(Icons.shopping_cart),
          ),
          BottomNavigationBarItem(
            label: 'Account',
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
