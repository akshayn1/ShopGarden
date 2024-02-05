import 'package:flutter/material.dart';
import 'package:shoping_app/UI/cart/widgets/cart_item_tile.dart';

class ScreenCart extends StatelessWidget {
  const ScreenCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 195, 169),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Center(
          child: Text(
            "My Cart",
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 85,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      "Shipping, ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Text(
                    "To Address",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 3, 195, 169),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(color: Colors.white, width: 2),
                        ),
                      ),
                      child: const Text(
                        'Change',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 530,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(23),
                    topRight: Radius.circular(23)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 8, left: 4, right: 4),
                child: ListView(
                  children: const [
                    CartItemTile(),
                    CartItemTile(),
                    CartItemTile(),
                    CartItemTile(),
                    CartItemTile(),
                    CartItemTile(),
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: Colors.grey,
            height: 1,
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            height: 62,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 40,
                  width: 200,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_cart_checkout_rounded),
                    label: const Text(
                      "Checkout",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 23),
                    ),
                    style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.green),
                      foregroundColor:
                          MaterialStatePropertyAll<Color>(Colors.white),
                    ),
                  ),
                ),
                const Text(
                  "Total:",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      color: Colors.green),
                ),
                const Text(
                  '\u{20B9}5468',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      color: Colors.green),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
