// ignore: file_names
import 'package:flutter/material.dart';
import 'package:homework_flutter/src/resources/home/home_page.dart';

class BottomTab extends StatefulWidget {
  const BottomTab({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BottomTabState createState() => _BottomTabState();
}

class _BottomTabState extends State<BottomTab> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomePage(),
    const PlaceholderScreen(title: "Wishlist"),
    const PlaceholderScreen(title: "Cart"),
    const PlaceholderScreen(title: "Search"),
    const PlaceholderScreen(title: "Setting"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          showSelectedLabels: _selectedIndex != -1,
          showUnselectedLabels: true,
          selectedLabelStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          unselectedLabelStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: _buildIcon(Icons.home_outlined, 0),
              activeIcon: _buildActiveIcon(Icons.home),
              label: _selectedIndex == 0 ? "" : "Home", 
            ),
            BottomNavigationBarItem(
              icon: _buildIcon(Icons.favorite_border, 1),
              activeIcon: _buildActiveIcon(Icons.favorite),
              label: _selectedIndex == 1 ? "" : "Wishlist", 
            ),
            BottomNavigationBarItem(
              icon: _buildIcon(Icons.shopping_cart_outlined, 2),
              activeIcon: _buildActiveIcon(Icons.shopping_cart),
              label: _selectedIndex == 2 ? "" : "Cart", 
            ),
            BottomNavigationBarItem(
              icon: _buildIcon(Icons.search, 3),
              activeIcon: _buildActiveIcon(Icons.search),
              label: _selectedIndex == 3 ? "" : "Search",
            ),
            BottomNavigationBarItem(
              icon: _buildIcon(Icons.settings_outlined, 4),
              activeIcon: _buildActiveIcon(Icons.settings),
              label: _selectedIndex == 4 ? "" : "Setting", 
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon(IconData icon, int index) {
    return Icon(
      icon,
      color: _selectedIndex == index ? Colors.red : Colors.black,
    );
  }

  Widget _buildActiveIcon(IconData icon) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 10,
                offset: Offset(0, 3),
              ),
            ],
          ),
        ),
        Icon(
          icon,
          size: 28,
          color: Colors.red,
        ),
      ],
    );
  }
}

class PlaceholderScreen extends StatelessWidget {
  final String title;

  const PlaceholderScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '$title Page',
        style: const TextStyle(fontSize: 24),
      ),
    );
  }
}
