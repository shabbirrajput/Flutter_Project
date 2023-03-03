import 'package:flutter/material.dart';
import 'package:shopping_app/pages/login_signup_page/signup_page.dart';

void main() => runApp(const ShoppingApp());
class ShoppingApp extends StatelessWidget {
  const ShoppingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SignUpPage();
  }
}
