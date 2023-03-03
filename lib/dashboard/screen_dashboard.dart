import 'package:flutter/material.dart';
import 'package:shopping_app/dashboard/category/category_model.dart';
import 'package:shopping_app/dashboard/view/tab/view/tab_home.dart';

class ScreenDashboard extends StatefulWidget {
  const ScreenDashboard({super.key});

  @override
  State<ScreenDashboard> createState() => _ScreenDashboardState();
}

class _ScreenDashboardState extends State<ScreenDashboard> {
  List<CategoryModel> mCarModel = [];

  int selectedIndex = 0;

  @override
  void initState() {
    setData();
    super.initState();
  }

  void setData() {
    CategoryModel mCarModelData = CategoryModel();
    mCarModelData.image = '';
    mCarModelData.name = 'BMW';
    mCarModelData.price = '\$100';

    mCarModel.add(mCarModelData);

    mCarModelData = CategoryModel();
    mCarModelData.image = '';
    mCarModelData.name = 'MG';
    mCarModelData.price = '\$90';

    mCarModel.add(mCarModelData);
    setState(() {});
  }

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Drawer drawer = Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: const Text("Shabbir Rajput"),
            accountEmail: const Text("shabbirrajput97@gmail.com"),
            currentAccountPicture: CircleAvatar(
              radius: 18,
              child: ClipOval(
                child: Image.network(
                    'https://media.licdn.com/dms/image/C4D03AQHsGuxsef22nw/profile-displayphoto-shrink_800_800/0/1639582709119?e=2147483647&v=beta&t=YCn9_BqaV-bsi7CSNYGl18buvR8Efed5B0rdiuRVbmw'),
              ),
            ),
          ),
          ListTile(
            tileColor: selectedIndex == 0 ? Colors.green : null,
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () {
              _onItemTapped(0);
              Navigator.pop(context);
            },
          ),
          ListTile(
            tileColor: selectedIndex == 1 ? Colors.yellow : null,
            leading: const Icon(Icons.feed),
            title: const Text("Feed"),
            onTap: () {
              _onItemTapped(1);
              Navigator.pop(context);
            },
          ),
          ListTile(
            tileColor: selectedIndex == 2 ? Colors.blue : null,
            leading: const Icon(Icons.account_box),
            title: const Text("Account"),
            onTap: () {
              _onItemTapped(2);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            if (scaffoldKey.currentState!.isDrawerOpen) {
              scaffoldKey.currentState!.openEndDrawer();
            } else {
              scaffoldKey.currentState!.openDrawer();
            }
          },
        ),
        actions: [
          if (selectedIndex == 0)
            IconButton(
                onPressed: () {
                  // Navigator.of(context).pushAndRemoveUntil(
                  //     MaterialPageRoute(builder: (context) => const AdminDashboard()),
                  //         (Route<dynamic> route) => false);
                },
                icon: const Icon(Icons.switch_account))
        ],
        title: Text(selectedIndex == 0
            ? 'Welcome To Home'
            : selectedIndex == 1
                ? 'Feed'
                : 'Account'),
      ),
      drawer: drawer,
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                backgroundColor: Colors.green,
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.feed),
                backgroundColor: Colors.yellow,
                label: 'Feed'),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              backgroundColor: Colors.blue,
              label: 'Account',
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5),
      body: IndexedStack(
        index: selectedIndex,
        children: const [
          MyHomePage(),
          Center(child: Text('Feed')),
          Center(child: Text('Account')),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
