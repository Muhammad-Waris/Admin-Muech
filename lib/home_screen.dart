import 'package:admin_murch/cat_upload.dart';
import 'package:admin_murch/featured_product_uploads.dart';
import 'package:admin_murch/prod_upload.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _currentIndex = 0;

  final List<Widget> _screens = [
    const ProdUpload(),
    const CategoriesUpload(),
    const FeaturedProductUpload(),
    // const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() => _currentIndex = index);
        },
        items: [
          /// Home
          SalomonBottomBarItem(
              icon: const Icon(Icons.production_quantity_limits),
              title: const Text("Product"),
              selectedColor: const Color.fromARGB(255, 233, 144, 99),
              unselectedColor: Colors.black),

          /// Likes
          SalomonBottomBarItem(
              icon: const Icon(Icons.category),
              title: const Text("Category"),
              selectedColor: const Color.fromARGB(255, 233, 144, 99),
              unselectedColor: Colors.black),

          /// Search
          SalomonBottomBarItem(
              icon: const Icon(Icons.featured_play_list),
              title: const Text("Featured"),
              selectedColor: const Color.fromARGB(255, 233, 144, 99),
              unselectedColor: Colors.black),

          // /// Profile
          // SalomonBottomBarItem(
          //     icon: const Icon(Icons.person),
          //     title: const Text("Profile"),
          //     selectedColor: const Color.fromARGB(255, 233, 144, 99),
          //     unselectedColor: Colors.black),
        ],
      ),
    );
  }
}
