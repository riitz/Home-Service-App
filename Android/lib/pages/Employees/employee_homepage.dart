import 'package:flutter/material.dart';


//for homescreen
import 'package:myproject/pages/Employees/employee_homescreen.dart';
import 'package:myproject/pages/Employees/employee_orders.dart';
import 'package:myproject/pages/Employees/employee_profile.dart';

import 'package:myproject/pages/orderpage.dart';

class EmployeeHomePage extends StatefulWidget {
 

  @override
  _EmployeeHomePageState createState() => _EmployeeHomePageState();
}

class _EmployeeHomePageState extends State<EmployeeHomePage> {
  int currentTab = 0;
  EmployeeHomeScreen employeehomeScreen;
  EmployeeProfile profilePage;
  Employee_Order orderPage;
  Widget currentPage;
  List<Widget> pages;
  @override
    void initState() {
    // call the fetch method on food
    // widget.foodModel.fetchFoods();

    employeehomeScreen = EmployeeHomeScreen();
    profilePage = EmployeeProfile();
    orderPage = Employee_Order();

    pages = [employeehomeScreen,orderPage,profilePage];

    currentPage = employeehomeScreen;
    super.initState();
  }
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
            title: Text("My Orders"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            title: Text("Profile"),
          )
        ],

      ),
      body: currentPage,
       
    );
  }
}