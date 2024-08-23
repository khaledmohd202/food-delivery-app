import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/screens/cart_screen/cart_screen.dart';
import 'package:food_delivery/screens/home_screen/widgets/categories_widgets/categories.dart';
import 'package:food_delivery/screens/home_screen/widgets/home_app_bar.dart';
import 'package:food_delivery/screens/home_screen/widgets/home_drawer.dart';
import 'package:food_delivery/screens/home_screen/widgets/home_headline.dart';
import 'package:food_delivery/screens/home_screen/widgets/home_text_form_field.dart';
import 'package:food_delivery/screens/home_screen/widgets/newest_widgets/newest_items.dart';
import 'package:food_delivery/screens/home_screen/widgets/popular_widgets/popular.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  static const String routeName = 'HomeScreen';
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _key,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: HomeAppBar(
            icon: CupertinoIcons.bars,
            onPressed: () {
              // TODO 8: Add HomeDrawer
              _key.currentState!.openDrawer();
            },
          ),
          actions: [
            HomeAppBar(
              icon: Icons.notifications,
              onPressed: () {},
            ),
          ],
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            // TODO 1: Add HomeTextFormFiled
            HomeTextFormFiled(
              title: 'What would you like to eat?',
              onPressed: () {},
            ),
            // TODO 2: Add HomeHeadline Categories
            const HomeHeadline(title: 'Categories'),
            // TODO 3: Add Categories
            const Categories(),
            // TODO 4: Add HomeHeadline Popular
            const HomeHeadline(title: 'Popular'),
            // TODO 5: Add Popular Items
            const Popular(),
            // TODO 6: Add HomeHeadline Newest
            const HomeHeadline(title: 'Newest'),
            // TODO 7: Add Newest Items
            const NewestItems(),
          ],
        ),
        drawer: const HomeDrawer(),
        floatingActionButton: FloatingActionButton(
          // mini: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          onPressed: () {
            Navigator.pushNamed(context, CartScreen.routeName);
          },
          backgroundColor: Colors.red,
          child: const Icon(
            Icons.shopping_cart,
            color: Colors.white,
            size: 30,
          ),
        ));
  }
}
