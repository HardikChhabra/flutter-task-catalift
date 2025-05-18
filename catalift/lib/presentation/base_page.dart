import 'package:catalift/presentation/common/components/Navbar.dart';
import 'package:catalift/presentation/features/home/screens/home_page.dart';
import 'package:flutter/material.dart';

class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 60),
          child: const Navbar()),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          backgroundColor: const Color(0xFF000060), // Dark navy blue
          indicatorColor: Colors.transparent, // No selection indicator
          labelTextStyle:
              MaterialStateProperty.resolveWith<TextStyle>((states) {
            return const TextStyle(color: Colors.white, fontSize: 12);
          }),
          iconTheme: MaterialStateProperty.resolveWith<IconThemeData>((states) {
            if (states.contains(MaterialState.selected)) {
              return const IconThemeData(
                color: Colors.white,
                size: 32, // slightly larger
              );
            }
            return const IconThemeData(
              color: Colors.white,
              size: 24, // normal size
            );
          }),
        ),
        child: NavigationBar(
          selectedIndex: currentPageIndex,
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          destinations: const <Widget>[
            NavigationDestination(
                icon: Icon(Icons.home_outlined), label: "Home"),
            NavigationDestination(
                icon: Icon(Icons.explore_outlined), label: "Explore Mentors"),
            NavigationDestination(icon: Icon(Icons.menu_book_outlined), label: "Courses")
          ],
        ),
      ),
      body: <Widget>[
        const HomePage(),
        const Placeholder(), //for explore page
        const Placeholder() //for courses page
      ][currentPageIndex],
    );
  }
}
