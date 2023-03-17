import 'package:flutter/material.dart';
import 'package:shopping_app/dashboard/screen_dashboard.dart';

class CartItem {
  String name;
  double price;
  int quantity;

  CartItem({required this.name, required this.price, this.quantity = 1});
}

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<CartItem> cartItems = [    CartItem(name: 'Item 1', price: 10),    CartItem(name: 'Item 2', price: 20),  ];

  double get totalCost =>
      cartItems.fold(0, (sum, item) => sum + item.price * item.quantity);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     /* appBar: AppBar(

      ),*/
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final item = cartItems[index];
          return ListTile(
            title: Text(item.name),
            subtitle: Text('\$${item.price}'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      item.quantity++;
                    });
                  },
                ),
                Text('${item.quantity}'),
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if (item.quantity > 1) {
                        item.quantity--;
                      } else {
                        cartItems.removeAt(index);
                      }
                    });
                  },
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total: \$${totalCost.toStringAsFixed(2)}'),
              ElevatedButton(
                child: const Text('Checkout'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
