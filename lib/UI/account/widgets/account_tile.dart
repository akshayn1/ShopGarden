import 'package:flutter/material.dart';

class AccountTile extends StatelessWidget {
  const AccountTile({super.key, required this.title, required this.ico});

  final String title;
  final IconData ico;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 70,
          width: double.infinity,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 215, 215, 215),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 20,
              ),
              Icon(ico),
              const SizedBox(
                width: 10,
              ),
              Text(
                title,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Expanded(
                child: SizedBox(
                  width: 180,
                ),
              ),
              const Icon(Icons.arrow_forward_ios),
              const SizedBox(
                width: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
