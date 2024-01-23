import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_delivery/common/constants.dart';
import 'package:food_delivery/screens/home_screen/widgets/home_app_bar.dart';
import 'package:food_delivery/screens/item_screen/widgets/item_bottom_nav_bar.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});
  static String routeName = 'ItemScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Image.asset(
              'assets/images/pizza.png',
              height: kMediaQueryHeight(context) / 3,
              width: kMediaQueryWidth(context) / 2,
            ),
          ),
          Arc(
            arcType: ArcType.CONVEY,
            edge: Edge.TOP,
            height: 30,
            child: Container(
              width: kMediaQueryWidth(context),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 60,
                        bottom: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RatingBar.builder(
                            initialRating: 3.5,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            unratedColor: Colors.grey.withOpacity(0.5),
                            itemCount: 5,
                            itemSize: 20,
                            itemPadding: const EdgeInsets.symmetric(
                              horizontal: 4.0,
                            ),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.red,
                            ),
                            onRatingUpdate: (rating) {},
                          ),
                          const Text(
                            '\$ 20.00',
                            style: TextStyle(
                              fontSize: 20,
                              //color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Smoky Pizza',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                              width: kMediaQueryWidth(context) / 2.5,
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.red),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: const Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                  ),
                                  const Text(
                                    '1',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: InkWell(
                        onTap: () {},
                        child: const Text(
                          'Indulge in the tantalizing allure of our Smoky Pizza, a culinary masterpiece that takes your taste buds on a journey through a symphony of flavors. Immerse yourself in the rich, smoky essence that permeates each perfectly baked crust, creating a harmonious blend of savory sensations. Our handcrafted pizza is generously topped with a fusion of premium, smoky meats and a medley of fresh, vibrant vegetables, creating a perfect balance of textures and tastes',
                          maxLines: 6,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const ItemBottomNavBar(),
    );
  }
}
