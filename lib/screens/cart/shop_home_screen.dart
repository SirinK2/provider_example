import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/model/cart_model/item.dart';
import 'package:provider_example/screens/cart/cart_screen.dart';

import '../../model/cart_model/cart.dart';

class ShopHomeScreen extends StatelessWidget {
  ShopHomeScreen({Key? key}) : super(key: key);

  List<Item> items = [
    Item(name: 'Apple', price: 1),
    Item(name: 'Orange', price: 2),
    Item(name: 'Banana', price: 1.50),
    Item(name: 'Pineapple', price: 5.50),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Shop'),
          actions: [
            Row(
              children: [
                IconButton(
                    icon: const Icon(Icons.add_shopping_cart_outlined),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen()));
                    }),
                Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Consumer<Cart>(builder: (context, cart, child) {
                      return Text(
                        '${cart.count}',
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      );
                    }))
              ],
            ),
          ]),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, i) {
            return Card(
              elevation: 0.1,
              child: Consumer<Cart>(
                builder: (context, cart, child) {
                  return ListTile(
                    title: Text(
                      items[i].name,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      '${items[i].price} \$',
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.normal),
                    ),
                    trailing: Container(
                      width: 40,
                      height: 40,
                      decoration: const ShapeDecoration(
                          shape: CircleBorder(), color: Colors.black),
                      child: IconButton(
                        onPressed: () {
                          cart.addItem(items[i]);
                        },
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          }),
    );
  }
}
