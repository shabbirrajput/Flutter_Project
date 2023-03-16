import 'package:flutter/material.dart';

class TabAccount extends StatefulWidget {
  const TabAccount({Key? key}) : super(key: key);

  @override
  State<TabAccount> createState() => _TabAccountState();
}

class _TabAccountState extends State<TabAccount> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 50),
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.wallet),
            iconSize: 60,
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.message_outlined),
            iconSize: 60,
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.payment),
            iconSize: 60,
          ),
        ],
      ),
    );
  }
}
