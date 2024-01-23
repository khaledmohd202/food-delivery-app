import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/screens/cart_screen/widgets/ordered_item.dart';
import 'package:food_delivery/screens/home_screen/widgets/home_app_bar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  static String routeName = 'CartScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(
          'My Cart',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: HomeAppBar(
          icon: CupertinoIcons.back,
          onPressed: () {
            // TODO 8: Add HomeDrawer
            Navigator.pop(context);
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
        children:const [
          SingleChildScrollView(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                      left: 10,
                    ),
                    child: Text(
                      'Order List',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  OrderedItem(
                    image: 'assets/images/pizza.png',
                    title: 'Smoky Pizza',
                    description: 'Taste Our Smoky Pizza',
                    price: '\$ 10.00',
                    quantity: '1',
                  ),
                  OrderedItem(
                    image: 'assets/images/burger.png',
                    title: 'Cheese Burger',
                    description: 'Taste Our Cheese Burger',
                    price: '\$ 15.00',
                    quantity: '3',
                  ),
                  OrderedItem(
                    image: 'assets/images/salan.png',
                    title: 'Salan',
                    description: 'Taste Our Salan',
                    price: '\$ 17.00',
                    quantity: '2',
                  ),
                  OrderedItem(
                    image: 'assets/images/biryani.png',
                    title: 'Biryani',
                    description: 'Taste Our Biryani',
                    price: '\$ 20.00',
                    quantity: '1',
                  ),
                  OrderedItem(
                    image: 'assets/images/drink.png',
                    title: 'Drink',
                    description: 'Taste Our Drink',
                    price: '5',
                    quantity: '10',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          height: 50,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
          ),
          child: InkWell(
            onTap: () {},
            child: const Center(
              child: Text(
                'Place Order',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
