import 'package:flutter/material.dart';
//import 'package:myproject/pages/favorite_page.dart';

import 'package:myproject/pages/homescreen.dart';
import 'package:myproject/pages/orderpage.dart';
import 'package:myproject/pages/profile_page.dart';
class main_screen extends StatefulWidget {
  main_screen({Key key}) : super(key: key);

  @override
  _main_screenState createState() => _main_screenState();
}

class _main_screenState extends State<main_screen> {
  int currentTab = 0;
  //pages
  HomeScreen homeScreen;
 // FavoritePage favoritePage;
  ProfilePage profilePage;
  OrderPage orderPage;
  List<Widget> pages;
  Widget currentPage;

  @override
  void initState() {
    // call the fetch method on food
    // widget.foodModel.fetchFoods();

    homeScreen = HomeScreen();
    orderPage = OrderPage();
  //  favoritePage = FavoritePage();
    profilePage = ProfilePage();
    pages = [homeScreen, orderPage , profilePage];

    currentPage = homeScreen;
    super.initState();
  }

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTab,
        onTap: (index) {
          setState(() {
            currentTab = index;
            currentPage = pages[index];
          });
        },
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
            ),
            title: Text("Orders"),
          ),
         // BottomNavigationBarItem(
        //    icon: Icon(
         //     Icons.favorite,
        //    ),
        //    title: Text("Favorite"),
      //    ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            title: Text("Profile"),
          ),
        ],
      ),
      body: currentPage,
    );
  }
}
