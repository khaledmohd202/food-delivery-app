import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/screens/home_screen/widgets/newest_widgets/new_item.dart';

class NewestItems extends StatelessWidget {
  const NewestItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            NewItem(
              title: 'Smoky Pizza',
              description: 'Taste Our Smoky Pizza, We Provide Our Great Foods',
              price: '\$ 20.00',
              image: 'assets/images/pizza.png',
              onTapCart: () {},
              onTapFavorite: () {},
            ),
            NewItem(
              title: 'Beef Burger',
              description: 'Taste Our Beef Burger, We Provide Our Great Foods',
              price: '\$ 15.00',
              image: 'assets/images/burger.png',
              onTapCart: () {},
              onTapFavorite: () {},
            ),
            NewItem(
              title: 'Biryani',
              description: 'Taste Our Biryani, We Provide Our Great Foods',
              price: '\$ 10.00',
              image: 'assets/images/biryani.png',
              onTapCart: () {},
              onTapFavorite: () {},
            ),
            NewItem(
              title: 'Salan',
              description: 'Taste Our Salan, We Provide Our Great Foods',
              price: '\$ 20.00',
              image: 'assets/images/salan.png',
              onTapCart: () {},
              onTapFavorite: () {},
            ),
          ],
        ),
      ),
    );
  }
}

