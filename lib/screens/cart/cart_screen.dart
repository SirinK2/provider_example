import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../model/cart_model/cart.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Cart'),
      ),
      bottomNavigationBar: Container(
        height: 90,
        width: double.infinity,
        decoration: const ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight:  Radius.circular(20)
              )
            ),
          color: Colors.black

        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text(
              'Total Price: ${cart.totalPrice} \$',
              style: const TextStyle(
                  color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
          ),
        ),



      ),
      body: ListView.builder(
        itemCount: cart.count,
        itemBuilder: (context, i) {
          return Card(
            elevation: 0.1,
            child: ListTile(
              title: Text(cart.cartItems[i].name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
              ),),
              subtitle: Text('${cart.cartItems[i].price} \$',
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),),
              trailing: Container(
                width: 40,
                height: 40,
                decoration: const ShapeDecoration(
                    shape: CircleBorder(),
                    color: Colors.black

                ),
                child: IconButton(
                  onPressed:(){
                    cart.removeItem(cart.cartItems[i]);
                  },
                  icon: const Icon(Icons.delete, color: Colors.white,),
                ),
              ),

            ),
          );

        },

      ),
    );
  }
}
