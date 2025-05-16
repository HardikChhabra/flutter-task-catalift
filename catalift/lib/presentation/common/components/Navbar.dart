import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: const Color(0xFF000060),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //logo
          Image(
            image: const AssetImage('assets/icons/catalift_logo.jpg'),
            width: (MediaQuery.of(context).size.width) / 2.3,
          ),
          //icons
          const Row(
            children: [
              Icon(
                Icons.account_circle_outlined,
                color: Colors.white,
              ),
              SizedBox(width: 20),
              Icon(Icons.notifications_none, color: Colors.white),
              SizedBox(width: 20),
              Icon(Icons.chat_bubble_outline, color: Colors.white),
            ],
          )
        ],
      ),
    );
  }
}
