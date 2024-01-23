import 'package:flutter/material.dart';
import 'package:food_delivery/screens/cart_screen/cart_screen.dart';
import 'package:food_delivery/screens/home_screen/home_screen.dart';
import 'package:food_delivery/screens/item_screen/item_screen.dart';

Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) =>  HomeScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
  ItemScreen.routeName: (context) => const ItemScreen(),
};