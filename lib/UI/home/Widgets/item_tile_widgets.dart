import 'package:flutter/material.dart';
import 'package:shoping_app/UI/product/screen_product.dart';

class ItemTile extends StatelessWidget {
  const ItemTile(
      {super.key, required this.url, required this.title, required this.price});
  final String url;
  final String title;
  final int price;
  @override
  Widget build(
    BuildContext context,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          width: 130,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(255, 192, 188, 188),
                  offset: Offset(-2, 2),
                  blurRadius: 10,
                  spreadRadius: 0),
            ],
          ),
          child: Column(
            children: [
              Expanded(
                child: SizedBox(
                  height: 60,
                  width: 120,
                  child: Image(
                    image: NetworkImage(url, scale: 5),
                  ),
                ),
              ),
              Text(
                title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                '\u{20B9}$price',
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                    fontWeight: FontWeight.w600),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: ((context) {
                            return ScreenProduct(
                              url: url,
                              title: title,
                              price: price,
                            );
                          }),
                        ),
                      );
                    },
                    style: const ButtonStyle(
                        foregroundColor:
                            MaterialStatePropertyAll<Color>(Colors.white),
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.green)),
                    child: const Text("BUY"),
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  const Text("4/5")
                ],
              )
            ],
          )),
    );
  }
}
