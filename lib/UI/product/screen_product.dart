import 'package:flutter/material.dart';

class ScreenProduct extends StatelessWidget {
  const ScreenProduct(
      {super.key, required this.url, required this.title, required this.price});

  final String title;
  final int price;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Stack(
            children: [
              Center(
                child: SizedBox(
                  height: 400,
                  width: 300,
                  child: Center(
                    child: Image(
                      image: NetworkImage(
                        url,
                        scale: 2,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.arrow_back))
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 319,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(23),
                    topRight: Radius.circular(23),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.green,
                        offset: Offset(-2, 2),
                        blurRadius: 10,
                        spreadRadius: 0),
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        const Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Text("4/5")
                          ],
                        )
                      ],
                    ),
                    const Divider(),
                    const Text(
                      "This pack is contain 1kg tomato,500g mali,2 nos cucumber,200g onion,250g carrot",
                      style: TextStyle(fontSize: 18),
                    ),
                    const Divider(),
                    Row(
                      children: [
                        const Text(
                          "Weight :",
                          style: TextStyle(fontSize: 20),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.remove,
                            color: Colors.red,
                          ),
                        ),
                        const Text("1 kg"),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add,
                            color: Colors.green,
                          ),
                        ),
                        const SizedBox(
                          width: 81,
                        ),
                        Text(
                          '\u{20B9}$price',
                          style: const TextStyle(
                              fontSize: 25,
                              color: Colors.green,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      height: 36,
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shopping_cart,
                          size: 35,
                        ),
                        label: const Text(
                          "Add To Cart",
                          style: TextStyle(fontSize: 20),
                        ),
                        style: const ButtonStyle(
                            foregroundColor:
                                MaterialStatePropertyAll<Color>(Colors.white),
                            backgroundColor:
                                MaterialStatePropertyAll<Color>(Colors.green)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
