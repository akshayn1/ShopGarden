import 'package:flutter/material.dart';

class CartItemTile extends StatelessWidget {
  const CartItemTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        Container(
          height: 120,
          width: double.infinity,
          decoration: BoxDecoration(boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(1, 1),
              blurRadius: 5,
              spreadRadius: 0,
            )
          ], color: Colors.white, borderRadius: BorderRadius.circular(23)),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 80,
                  height: 80,
                  child: Image(
                      image: NetworkImage(
                          "https://img.freepik.com/free-photo/pile-fresh-vegetables_144627-16683.jpg?w=740&t=st=1703395588~exp=1703396188~hmac=ddbceefb96ce0f8e16cb550ae5a4eaf397d9db36a39c7beb4cba7f3e308fd9e7")),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: VerticalDivider(),
              ),
              Expanded(
                child: SizedBox(
                  height: 130,
                  width: 180,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Vegetables",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                      const Text(
                        '\u{20B9}200',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.green,
                            fontWeight: FontWeight.w600),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            "Weight :",
                            style: TextStyle(fontSize: 15),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.remove,
                              color: Colors.red,
                            ),
                          ),
                          const Text("1 kg"),
                          Expanded(
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                color: Colors.green,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    size: 30,
                    color: Colors.redAccent,
                  ))
            ],
          ),
        )
      ],
    );
  }
}
