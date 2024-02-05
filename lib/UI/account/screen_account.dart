import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shoping_app/UI/account/widgets/account_tile.dart';
import 'package:shoping_app/UI/core/colors/colors.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: mainColor, borderRadius: BorderRadius.circular(20)),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: 80,
                    ),
                    Column(
                      children: [
                        Text(
                          "HELLO, ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Akshay",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView(
                children: const [
                  AccountTile(
                    title: "Address",
                    ico: Icons.location_on,
                  ),
                  AccountTile(
                    title: "Orders",
                    ico: Icons.shopping_bag,
                  ),
                  AccountTile(
                    title: "Wallet",
                    ico: Icons.account_balance_wallet_outlined,
                  ),
                  AccountTile(
                    title: "Help & Support",
                    ico: Icons.help,
                  ),
                  AccountTile(
                    title: "Language",
                    ico: Icons.translate,
                  ),
                  AccountTile(
                    title: "Logout",
                    ico: Icons.logout,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
