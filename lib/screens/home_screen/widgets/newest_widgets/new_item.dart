import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_delivery/common/constants.dart';
import 'package:food_delivery/screens/item_screen/item_screen.dart';

class NewItem extends StatelessWidget {
  const NewItem({
    super.key,
    required this.title,
    required this.description,
    required this.price,
    required this.image,
    required this.onTapCart,
    this.onTapFavorite,
  });
  final String title;
  final String description;
  final String price;
  final String image;
  final void Function() onTapCart;
  final void Function()? onTapFavorite;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: kMediaQueryHeight(context) / 4.9,
        width: kMediaQueryWidth(context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {
                Navigator.pushNamed(context, ItemScreen.routeName);
                  },
                  child: Image.asset(
                    // TODO 12: Add image
                    image,
                    height: kMediaQueryHeight(context) / 5,
                    width: kMediaQueryWidth(context) / 3,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: kMediaQueryWidth(context) / 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    // TODO 13: Add title
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // TODO 14: Add description
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  RatingBar.builder(
                    initialRating: 3.5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    unratedColor: Colors.grey.withOpacity(0.5),
                    itemCount: 5,
                    itemSize: 20,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.red,
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                  // TODO 15: Add price
                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    // TODO 6: Add Favorite onTap
                    onTap: onTapFavorite,
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  InkWell(
                    // TODO 6: Add Cart onTap
                    onTap: onTapCart,
                    child: const Icon(
                      CupertinoIcons.cart,
                      color: Colors.red,
                      size: 26,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
