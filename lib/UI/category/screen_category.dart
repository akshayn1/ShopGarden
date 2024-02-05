import 'package:flutter/material.dart';
import 'package:shoping_app/UI/home/Widgets/item_tile_widgets.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            const TabBar(
              unselectedLabelColor: Colors.grey,
              labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
              indicator: BoxDecoration(
                  color: Color.fromARGB(255, 3, 195, 169),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  shape: BoxShape.rectangle),
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(
                  text: "Apple",
                ),
                Tab(
                  text: "Orange",
                ),
                Tab(
                  text: "Grapes",
                )
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  //Apple tab
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.count(
                        crossAxisCount: 2,
                        children: const [
                          ItemTile(
                              url:
                                  'https://img.freepik.com/free-photo/apples-table_144627-6741.jpg?w=740&t=st=1703396344~exp=1703396944~hmac=3da2d69b309686b0e2350ffe690cf81992a7cc70e71742e9f0de77de43ea2129',
                              title: "Apple",
                              price: 400),
                          ItemTile(
                              url:
                                  'https://img.freepik.com/free-photo/apples-table_144627-6741.jpg?w=740&t=st=1703396344~exp=1703396944~hmac=3da2d69b309686b0e2350ffe690cf81992a7cc70e71742e9f0de77de43ea2129',
                              title: "Apple",
                              price: 400),
                          ItemTile(
                              url:
                                  'https://img.freepik.com/free-photo/apples-table_144627-6741.jpg?w=740&t=st=1703396344~exp=1703396944~hmac=3da2d69b309686b0e2350ffe690cf81992a7cc70e71742e9f0de77de43ea2129',
                              title: "Apple",
                              price: 400),
                          ItemTile(
                              url:
                                  'https://img.freepik.com/free-photo/apples-table_144627-6741.jpg?w=740&t=st=1703396344~exp=1703396944~hmac=3da2d69b309686b0e2350ffe690cf81992a7cc70e71742e9f0de77de43ea2129',
                              title: "Apple",
                              price: 400),
                          ItemTile(
                              url:
                                  'https://img.freepik.com/free-photo/apples-table_144627-6741.jpg?w=740&t=st=1703396344~exp=1703396944~hmac=3da2d69b309686b0e2350ffe690cf81992a7cc70e71742e9f0de77de43ea2129',
                              title: "Apple",
                              price: 400),
                          ItemTile(
                              url:
                                  'https://img.freepik.com/free-photo/apples-table_144627-6741.jpg?w=740&t=st=1703396344~exp=1703396944~hmac=3da2d69b309686b0e2350ffe690cf81992a7cc70e71742e9f0de77de43ea2129',
                              title: "Apple",
                              price: 400),
                          ItemTile(
                              url:
                                  'https://img.freepik.com/free-photo/apples-table_144627-6741.jpg?w=740&t=st=1703396344~exp=1703396944~hmac=3da2d69b309686b0e2350ffe690cf81992a7cc70e71742e9f0de77de43ea2129',
                              title: "Apple",
                              price: 400),
                          ItemTile(
                              url:
                                  'https://img.freepik.com/free-photo/apples-table_144627-6741.jpg?w=740&t=st=1703396344~exp=1703396944~hmac=3da2d69b309686b0e2350ffe690cf81992a7cc70e71742e9f0de77de43ea2129',
                              title: "Apple",
                              price: 400),
                          ItemTile(
                              url:
                                  'https://img.freepik.com/free-photo/apples-table_144627-6741.jpg?w=740&t=st=1703396344~exp=1703396944~hmac=3da2d69b309686b0e2350ffe690cf81992a7cc70e71742e9f0de77de43ea2129',
                              title: "Apple",
                              price: 400),
                          ItemTile(
                              url:
                                  'https://img.freepik.com/free-photo/apples-table_144627-6741.jpg?w=740&t=st=1703396344~exp=1703396944~hmac=3da2d69b309686b0e2350ffe690cf81992a7cc70e71742e9f0de77de43ea2129',
                              title: "Apple",
                              price: 400),
                        ],
                      )),

                  // Orange Tab

                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.count(
                        crossAxisCount: 2,
                        children: const [
                          ItemTile(
                              url:
                                  'https://img.freepik.com/free-vector/realistic-orange-splash-fruit_52683-65283.jpg?w=740&t=st=1706944945~exp=1706945545~hmac=5528b253c4014a0916b16f7b4e5f84f4fca6bd8818d3d7938b7e2aa4732d8b52',
                              title: "Orange",
                              price: 376),
                          ItemTile(
                              url:
                                  'https://img.freepik.com/free-vector/realistic-orange-splash-fruit_52683-65283.jpg?w=740&t=st=1706944945~exp=1706945545~hmac=5528b253c4014a0916b16f7b4e5f84f4fca6bd8818d3d7938b7e2aa4732d8b52',
                              title: "Orange",
                              price: 376),
                          ItemTile(
                              url:
                                  'https://img.freepik.com/free-vector/realistic-orange-splash-fruit_52683-65283.jpg?w=740&t=st=1706944945~exp=1706945545~hmac=5528b253c4014a0916b16f7b4e5f84f4fca6bd8818d3d7938b7e2aa4732d8b52',
                              title: "Orange",
                              price: 376),
                          ItemTile(
                              url:
                                  'https://img.freepik.com/free-vector/realistic-orange-splash-fruit_52683-65283.jpg?w=740&t=st=1706944945~exp=1706945545~hmac=5528b253c4014a0916b16f7b4e5f84f4fca6bd8818d3d7938b7e2aa4732d8b52',
                              title: "Orange",
                              price: 376),
                          ItemTile(
                              url:
                                  'https://img.freepik.com/free-vector/realistic-orange-splash-fruit_52683-65283.jpg?w=740&t=st=1706944945~exp=1706945545~hmac=5528b253c4014a0916b16f7b4e5f84f4fca6bd8818d3d7938b7e2aa4732d8b52',
                              title: "Orange",
                              price: 376),
                          ItemTile(
                              url:
                                  'https://img.freepik.com/free-vector/realistic-orange-splash-fruit_52683-65283.jpg?w=740&t=st=1706944945~exp=1706945545~hmac=5528b253c4014a0916b16f7b4e5f84f4fca6bd8818d3d7938b7e2aa4732d8b52',
                              title: "Orange",
                              price: 376),
                          ItemTile(
                              url:
                                  'https://img.freepik.com/free-vector/realistic-orange-splash-fruit_52683-65283.jpg?w=740&t=st=1706944945~exp=1706945545~hmac=5528b253c4014a0916b16f7b4e5f84f4fca6bd8818d3d7938b7e2aa4732d8b52',
                              title: "Orange",
                              price: 376),
                          ItemTile(
                              url:
                                  'https://img.freepik.com/free-vector/realistic-orange-splash-fruit_52683-65283.jpg?w=740&t=st=1706944945~exp=1706945545~hmac=5528b253c4014a0916b16f7b4e5f84f4fca6bd8818d3d7938b7e2aa4732d8b52',
                              title: "Orange",
                              price: 376),
                          ItemTile(
                              url:
                                  'https://img.freepik.com/free-vector/realistic-orange-splash-fruit_52683-65283.jpg?w=740&t=st=1706944945~exp=1706945545~hmac=5528b253c4014a0916b16f7b4e5f84f4fca6bd8818d3d7938b7e2aa4732d8b52',
                              title: "Orange",
                              price: 376),
                          ItemTile(
                              url:
                                  'https://img.freepik.com/free-vector/realistic-orange-splash-fruit_52683-65283.jpg?w=740&t=st=1706944945~exp=1706945545~hmac=5528b253c4014a0916b16f7b4e5f84f4fca6bd8818d3d7938b7e2aa4732d8b52',
                              title: "Orange",
                              price: 376),
                        ],
                      )),
                  //Grapes tab

                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.count(
                        crossAxisCount: 2,
                        children: const [
                          ItemTile(
                              url:
                                  'https://img.freepik.com/free-photo/close-up-bunch-grapes_1149-761.jpg?w=740&t=st=1703396398~exp=1703396998~hmac=dbffd84282be5767f0c1fca12c4daf79fca1e7b425ad304e2dd7b2b750e65ee9',
                              title: "Grapes",
                              price: 310),
                          ItemTile(
                              url:
                                  'https://img.freepik.com/free-photo/close-up-bunch-grapes_1149-761.jpg?w=740&t=st=1703396398~exp=1703396998~hmac=dbffd84282be5767f0c1fca12c4daf79fca1e7b425ad304e2dd7b2b750e65ee9',
                              title: "Grapes",
                              price: 310),
                          ItemTile(
                              url:
                                  'https://img.freepik.com/free-photo/close-up-bunch-grapes_1149-761.jpg?w=740&t=st=1703396398~exp=1703396998~hmac=dbffd84282be5767f0c1fca12c4daf79fca1e7b425ad304e2dd7b2b750e65ee9',
                              title: "Grapes",
                              price: 310),
                          ItemTile(
                              url:
                                  'https://img.freepik.com/free-photo/close-up-bunch-grapes_1149-761.jpg?w=740&t=st=1703396398~exp=1703396998~hmac=dbffd84282be5767f0c1fca12c4daf79fca1e7b425ad304e2dd7b2b750e65ee9',
                              title: "Grapes",
                              price: 310),
                          ItemTile(
                              url:
                                  'https://img.freepik.com/free-photo/close-up-bunch-grapes_1149-761.jpg?w=740&t=st=1703396398~exp=1703396998~hmac=dbffd84282be5767f0c1fca12c4daf79fca1e7b425ad304e2dd7b2b750e65ee9',
                              title: "Grapes",
                              price: 310),
                          ItemTile(
                              url:
                                  'https://img.freepik.com/free-photo/close-up-bunch-grapes_1149-761.jpg?w=740&t=st=1703396398~exp=1703396998~hmac=dbffd84282be5767f0c1fca12c4daf79fca1e7b425ad304e2dd7b2b750e65ee9',
                              title: "Grapes",
                              price: 310),
                          ItemTile(
                              url:
                                  'https://img.freepik.com/free-photo/close-up-bunch-grapes_1149-761.jpg?w=740&t=st=1703396398~exp=1703396998~hmac=dbffd84282be5767f0c1fca12c4daf79fca1e7b425ad304e2dd7b2b750e65ee9',
                              title: "Grapes",
                              price: 310),
                          ItemTile(
                              url:
                                  'https://img.freepik.com/free-photo/close-up-bunch-grapes_1149-761.jpg?w=740&t=st=1703396398~exp=1703396998~hmac=dbffd84282be5767f0c1fca12c4daf79fca1e7b425ad304e2dd7b2b750e65ee9',
                              title: "Grapes",
                              price: 310),
                        ],
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
