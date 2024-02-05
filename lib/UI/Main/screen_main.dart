import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shoping_app/UI/Main/widgets/bottom_nav.dart';
import 'package:shoping_app/UI/account/screen_account.dart';
import 'package:shoping_app/UI/cart/screen_cart.dart';
import 'package:shoping_app/UI/category/screen_category.dart';
import 'package:shoping_app/UI/core/colors/colors.dart';

import '../home/screen_home.dart';

class ScreenMain extends StatelessWidget {
  const ScreenMain({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    Size screensize = mediaQueryData.size;
    log(screensize.height.toString());
    log((screensize.height / 1.2782).toString());

    final pages = [HomeScreen(), CategoryScreen(), AccountScreen()];

    return Scaffold(
        backgroundColor: mainColor,
        appBar: AppBar(
          title: const Center(
            child: SizedBox(
                height: 150,
                width: 150,
                child: Image(image: AssetImage('assets/image/ShopGarden.png'))),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (((context) {
                  return const ScreenCart();
                }))));
              },
              icon: const Icon(Icons.shopping_cart),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: mainColor),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                        'https://www.corporatephotographerslondon.com/wp-content/uploads/2021/07/LinkedIn_profile_photo_sample_1-300x300.jpg',
                      ),
                    ),
                    Text(
                      "Akshay",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 55, 114, 57),
                ),
                title: const Text(
                  "Home",
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.list_alt,
                  color: Color.fromARGB(255, 55, 114, 57),
                ),
                title: const Text("Orders"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.settings,
                  color: Color.fromARGB(255, 55, 114, 57),
                ),
                title: const Text("Settings"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.account_circle,
                  color: Color.fromARGB(255, 55, 114, 57),
                ),
                title: const Text("About"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.info,
                  color: Color.fromARGB(255, 55, 114, 57),
                ),
                title: const Text("info"),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: SafeArea(
            child: ValueListenableBuilder(
                valueListenable: indexNavBar,
                builder: (context, index, _) {
                  return pages[index];
                })),
        bottomNavigationBar: const BottonNavigationWidget());
  }
}
