import 'package:flutter/material.dart';
import 'package:ideathon/components/cartitem.dart';
import 'package:ideathon/models/cart.dart';
import 'package:ideathon/models/shoe.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder:
          (context, value, child) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My Cart',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 8),
            
                Expanded(
                  child: ListView.builder(
                    itemCount: value.getUserCart().length,
                    itemBuilder: (context, index) {
                      //get individual shoe class
                      Shoe individualShoe = value.getUserCart()[index];
                      // return the cart item
                      return CartItem(shoe: individualShoe);
                    },
                  ),
                ),
              ]
            ),
          ),
    );
  }
}
