import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/common/constants.dart';
import 'package:food_delivery/screens/home_screen/widgets/drawer_widgets/drawer_item.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: UserAccountsDrawerHeader(
              currentAccountPictureSize: Size.square(65),
              accountName: Text(
                'Khaled',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              accountEmail: Text(
                'khaledmohd202@gmail.com',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(10),
                  right: Radius.circular(10),
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar.jpg'),
              ),
            ),
          ),
          const DrawerItem(
            title: 'Home',
            icon: CupertinoIcons.home,
          ),

          kDivider,
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          const DrawerItem(
            title: 'My Profile',
            icon: CupertinoIcons.person,
          ),
          kDivider,
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          const DrawerItem(
            title: 'My Cart',
            icon: CupertinoIcons.cart,
          ),
          kDivider,
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          const DrawerItem(
            title: 'My Wishlist',
            icon: CupertinoIcons.heart,
          ),
          kDivider,
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          const DrawerItem(
            title: 'My Orders',
            icon: CupertinoIcons.bag,
          ),
          kDivider,
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          const DrawerItem(
            title: 'Settings',
            icon: CupertinoIcons.settings,
          ),
          kDivider,
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          const DrawerItem(
            title: 'Logout',
            icon: CupertinoIcons.square_arrow_left,
          ),
          kDivider,
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
        ],
      ),
    );
  }
}

