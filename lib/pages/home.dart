import 'package:flutter/material.dart';
import 'package:ideathon/components/bottom_navigation_bar.dart';
import 'package:ideathon/pages/cart_page.dart';
import 'package:ideathon/pages/shop_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //this selected index to control he bottom nav bar
  int _selectedIndex = 0;

  //this method will update the index
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages to display
  final List<Widget> _pages = [
    //shop page
    const ShopPage(), const CartPage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigate(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      backgroundColor: Colors.grey[300],
      body: _pages[_selectedIndex],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder:
              (context) => IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          children: [
            //logo
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Image.asset(
                'lib/images/nikelogo.PNG',
                color: Colors.white,
                height: 225,
                width: 150,
                fit: BoxFit.contain,
              ),
            ),
            Divider(color: Colors.grey[800]),

            //elements
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ListTile(
                leading: Icon(Icons.home, size: 32),
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ListTile(
                leading: Icon(Icons.info, size: 32),
                title: Text(
                  'About',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),

            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 10),
              child: ListTile(
                leading: Icon(Icons.logout, size: 32),
                title: Text(
                  'Logout',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
