import 'package:flutter/material.dart';
import 'package:shopping_app/dashboard/screen_dashboard.dart';
import 'package:shopping_app/splash/screen_splash.dart';

void main() => runApp(const ShoppingApp());
class ShoppingApp extends StatelessWidget {
  const ShoppingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grocery App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(color: Colors.deepPurpleAccent)
      ),
      home: const ScreenDashboard(),
    );
  }
}
