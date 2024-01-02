import 'package:flutter/material.dart';
import 'package:shoping_app/UI/cart/screen_cart.dart';
import 'package:shoping_app/UI/home/Widgets/item_tile_widgets.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 195, 169),
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
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 3, 195, 169)),
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
        child: Column(
          children: [
            const SizedBox(
              height: 85,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
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
                ),
              ),
            ),
            Container(
              height: 618,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(23),
                    topRight: Radius.circular(23)),
              ),
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: const [
                      ItemTile(
                          url:
                              'https://img.freepik.com/free-photo/pile-fresh-vegetables_144627-16683.jpg?w=740&t=st=1703395588~exp=1703396188~hmac=ddbceefb96ce0f8e16cb550ae5a4eaf397d9db36a39c7beb4cba7f3e308fd9e7',
                          title: "Vegetables",
                          price: 200),
                      ItemTile(
                          url:
                              'https://img.freepik.com/free-photo/bell-pepper_1339-1600.jpg?w=740&t=st=1703395843~exp=1703396443~hmac=128e36a39215171ab2b50ca7e931fbb5f5298cb2135d2854d817ae6b0ac51209',
                          title: "Capsicum",
                          price: 160),
                      ItemTile(
                          url:
                              'https://img.freepik.com/free-photo/colorful-fruits-tasty-fresh-ripe-juicy-white-desk_179666-169.jpg?w=740&t=st=1703396125~exp=1703396725~hmac=869e757f661b952130a56745a132bb9d6d11196bfd86d5cecfd0639a5f3cb4fd',
                          title: "Fruits",
                          price: 430),
                      ItemTile(
                          url:
                              'https://img.freepik.com/free-photo/closeup-sliced-whole-oranges-beautiful-light_181624-2494.jpg?w=360&t=st=1703396194~exp=1703396794~hmac=9444cb2de6b261dc498d22a6dfbdd7e633a35bc0b3eafe08f7abbbb573fb1e82',
                          title: "Musambi",
                          price: 210),
                      ItemTile(
                          url:
                              'https://img.freepik.com/free-photo/apples-table_144627-6741.jpg?w=740&t=st=1703396344~exp=1703396944~hmac=3da2d69b309686b0e2350ffe690cf81992a7cc70e71742e9f0de77de43ea2129',
                          title: "Apple",
                          price: 400),
                      ItemTile(
                          url:
                              'https://img.freepik.com/free-photo/close-up-bunch-grapes_1149-761.jpg?w=740&t=st=1703396398~exp=1703396998~hmac=dbffd84282be5767f0c1fca12c4daf79fca1e7b425ad304e2dd7b2b750e65ee9',
                          title: "Grapes",
                          price: 310),
                      ItemTile(
                          url:
                              'https://img.freepik.com/free-photo/fresh-forest-berries-white_144627-34496.jpg?w=740&t=st=1703396488~exp=1703397088~hmac=9844764a786d3d46b9ec14f3358ea6a0370c26789ce1ce80ef0d03ee38fd660b',
                          title: "Berries",
                          price: 220),
                      ItemTile(
                          url:
                              'https://img.freepik.com/free-photo/bananas_1339-1171.jpg?w=740&t=st=1703396579~exp=1703397179~hmac=f8a5cc38c002b6b258020b8c620e82f08aee7a2accba7b2fa435f839a291807f',
                          title: "Banana",
                          price: 140),
                      ItemTile(
                          url:
                              'https://img.freepik.com/free-vector/realistic-fruits-composition-with-images-whole-sliced-kiwi-fruit-blank-background-vector-illustration_1284-66048.jpg?w=740&t=st=1703396726~exp=1703397326~hmac=992526853446ba45d860e57e0377d66eaf4345ea886d0e82d52bfee546561715',
                          title: "Kiwi",
                          price: 500),
                      ItemTile(
                          url:
                              'https://img.freepik.com/free-photo/lemon-table_144627-22176.jpg?w=740&t=st=1703396806~exp=1703397406~hmac=3f3148367ce87d2b602537eb8090b28843cecb40cf0cdab52466acbab4dc675f',
                          title: "Lemon",
                          price: 100),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
