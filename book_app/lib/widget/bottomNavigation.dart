import 'package:book_app/view/library.dart';
import 'package:book_app/view/myBook.dart';
import 'package:book_app/view/my_homePage.dart';
import 'package:book_app/widget/Myd.dart';
import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    switch (index) {
      case 1:
        Navigator.pushNamed(context, '/My Library');
        break;
      case 0:
        Navigator.pushNamed(context, '/Explore');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    const MaterialApp(
      routes: {},
      home: MyBottomNavigationBar(),
    );
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        selectedItemColor: const Color.fromARGB(255, 22, 92, 115),
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: const [
          BottomNavigationBarItem(
              icon: Image(image: AssetImage("assets/icons/ion_library.png")),
              label: 'My Library'),
          BottomNavigationBarItem(
            icon: Image(
                image: AssetImage("assets/icons/fluent_book-20-filled.png")),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Image(image: AssetImage("assets/icons/mdi_cart-variant.png")),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Image(
                image: AssetImage(
                    "assets/icons/fluent_people-community-16-filled.png")),
            label: 'Community',
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    // Return the appropriate screen based on the selected tab
    switch (_currentIndex) {
      case 1:
        return MyHomePage();
      case 0:
        return const MyLibraryScreen();
      case 2:
        return const MyBook();

      default:
        return const Myd();
    }
  }
}
