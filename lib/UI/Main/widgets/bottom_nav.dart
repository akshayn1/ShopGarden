import 'package:flutter/material.dart';

ValueNotifier indexNavBar = ValueNotifier(0);

class BottonNavigationWidget extends StatelessWidget {
  const BottonNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexNavBar,
      builder: (context, newIndex, _) {
        return BottomNavigationBar(
            selectedItemColor: const Color.fromARGB(255, 48, 201, 53),
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            currentIndex: newIndex,
            onTap: (index) {
              indexNavBar.value = index;
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.category,
                  ),
                  label: "Category"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                  ),
                  label: "Account"),
            ]);
      },
    );
  }
}
