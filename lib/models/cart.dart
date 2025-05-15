import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale ...
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Nike Vaporfly 4',
      price: '₹ 21 495.00',
      imagePath: "lib/images/image1.jpg",
      description: "Men's Road Racing Shoes",
    ),
    Shoe(
      name: 'Nike Vaporfly 4',
      price: '₹ 21 495.00',
      imagePath: "lib/images/image2.jpg",
      description: "Men's Road Racing Shoes",
    ),
    Shoe(
      name: 'Nike Vaporfly 4',
      price: '₹ 22 495.00',
      imagePath: "lib/images/image3.jpg",
      description: "Men's Road Racing Shoes",
    ),
    Shoe(
      name: 'Nike Vaporfly 3',
      price: '₹ 20 625.00',
      imagePath: "lib/images/image4.jpg",
      description: "Men's Road Racing Shoes",
    ),
    Shoe(
      name: 'Nike Run Swift 3',
      price: '₹ 6 295.00',
      imagePath: "lib/images/image5.jpg",
      description: "Men's Road Racing Shoes",
    ),
  ];

  //list of items in user art

  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
