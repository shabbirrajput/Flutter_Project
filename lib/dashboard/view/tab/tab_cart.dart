import 'package:flutter/material.dart';

class TabCart extends StatelessWidget {
  const TabCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            color: Colors.cyan,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Cart'),
                FloatingActionButton(
                    onPressed: (){},
                )
              ],
            ),
          ),
        ),
      );
  }
}
