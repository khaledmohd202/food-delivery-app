import 'package:flutter/material.dart';
import 'package:food_delivery/screens/home_screen/widgets/popular_widgets/popular_item.dart';
import 'package:food_delivery/screens/item_screen/item_screen.dart';

class Popular extends StatelessWidget {
  const Popular({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        child: Row(
          children: [
            PopularItem(
              title: 'Hot Burger',
              description: 'Taste our Hot Burger',
              price: '\$ 15.00',
              image: 'assets/images/burger.png',
              onTap: () {
                Navigator.pushNamed(context, ItemScreen.routeName);
              },
            ),
            PopularItem(
              title: 'Biryani',
              description: 'Taste our Biryani',
              price: '\$ 20.00',
              image: 'assets/images/biryani.png',
              onTap: () {
                Navigator.pushNamed(context, ItemScreen.routeName);
              },
            ),
            PopularItem(
              title: 'Salan',
              description: 'Taste our Salan',
              price: '\$ 17.00',
              image: 'assets/images/salan.png',
              onTap: () {
                Navigator.pushNamed(context, ItemScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
