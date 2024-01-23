import 'package:flutter/material.dart';

// Colors
const kBackgroundColor = Color(0xFFF5F5F3);

// MediaQuery
double kMediaQueryWidth(BuildContext context) => MediaQuery.of(context).size.width;
double kMediaQueryHeight(BuildContext context) => MediaQuery.of(context).size.height;

// Divider
final kDivider = Divider(
  color: Colors.grey.withOpacity(0.3),
  height: 1,
  indent: 40,
  endIndent: 40,
);
