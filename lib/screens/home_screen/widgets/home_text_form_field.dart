import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/common/constants.dart';

class HomeTextFormFiled extends StatelessWidget {
  const HomeTextFormFiled({
    super.key,
    required this.title,
    this.onPressed,
  });
  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Container(
        width: kMediaQueryWidth(context),
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              const Icon(
                CupertinoIcons.search,
                color: Colors.red,
              ),
              const SizedBox(width: 10),
              SizedBox(
                height: 50,
                width: kMediaQueryWidth(context) * 0.7,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: title,
                    contentPadding: const EdgeInsets.only(left: 15),
                  ),
                ),
              ),
              InkWell(
                onTap: onPressed,
                child: const Icon(Icons.filter_list),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
