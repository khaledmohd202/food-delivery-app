import 'package:flutter/material.dart';
import 'package:food_delivery/screens/home_screen/widgets/categories_widgets/category_item.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 5,
          vertical: 15,
        ),
        child: Row(
          children: [
            // TODO 3.1: Add Categories
            CategoryItem(
              image: 'assets/images/burger.png',
              onPressed: () {},
            ),
            CategoryItem(
              image: 'assets/images/biryani.png',
              onPressed: () {},

            ),
            CategoryItem(
              image: 'assets/images/drink.png',
              onPressed: () {},

            ),
            CategoryItem(
              image: 'assets/images/pizza.png',
              onPressed: () {},

            ),
            CategoryItem(
              image: 'assets/images/salan.png',
              onPressed: () {},

            ),
            CategoryItem(
              image: 'assets/images/burger.png',
              onPressed: () {},

            ),
            CategoryItem(
              image: 'assets/images/biryani.png',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
