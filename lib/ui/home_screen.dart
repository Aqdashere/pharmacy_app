import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy_app_ui/ui/diabetes_screen.dart';
import 'package:pharmacy_app_ui/ui/home_page.dart';
import 'package:pharmacy_app_ui/ui/mycart_screen.dart';
import 'package:pharmacy_app_ui/ui/notifaction_screen.dart';
import 'package:pharmacy_app_ui/ui/profile_screen.dart';
import 'package:pharmacy_app_ui/utils/routes/routes_names.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController controller = PageController();
  var _bottomNavIndex = 0;
  var brandIndex = 0;
  final iconList = <IconData>[
    Icons.home,
    Icons.notifications,
    Icons.shopping_cart,
    Icons.person,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          controller: controller,
          children: [
            HomePage(),
            NotificationScreen(),
            MyCart(),
            ProfileScreen(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => DiabetesScreen()));
          },
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: iconList,
          height: 65,
          activeColor: Colors.blue,
          activeIndex: _bottomNavIndex,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          onTap: (index){
            controller.jumpToPage(index);
          setState(() {
            _bottomNavIndex = index;
          });
          }
        ),

        //other params
      ),
    );
  }
}
