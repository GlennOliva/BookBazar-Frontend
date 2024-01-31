import 'package:book_bazar_finalproj/user_controller/BookCart.dart';
import 'package:book_bazar_finalproj/user_controller/BookOrders.dart';
import 'package:book_bazar_finalproj/user_controller/BooksProduct.dart';
import 'package:book_bazar_finalproj/user_controller/Home.dart';
import 'package:book_bazar_finalproj/user_controller/Settings.dart';
import 'package:flutter/material.dart';



class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomePage(),
    const CartPage(),
    const BookPage(),
    const OrdersPage(),
    const SettingsPage()
    
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: const Color(0xFF0A909F),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_sharp),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book_sharp),
              label: 'Books',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.edit_document),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          selectedItemColor: const Color(0xFF79ECF9),
          unselectedItemColor: Colors.white,
          currentIndex: _currentIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

