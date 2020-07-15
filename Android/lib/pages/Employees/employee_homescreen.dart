import 'package:flutter/material.dart';
import 'package:myproject/models/employee_current_order.dart';
import 'package:myproject/src/data/employee_current_orders.dart';
import 'package:myproject/src/widgets/orders.dart';

class EmployeeHomeScreen extends StatefulWidget {
  

  @override
  _EmployeeHomeScreenState createState() => _EmployeeHomeScreenState();
}

class _EmployeeHomeScreenState extends State<EmployeeHomeScreen> {
  List<current_orders> _currentorders = all_orders;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      body: ListView(
        padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
          children: <Widget>[
            Text("Home Services",
            style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
                ),
            SizedBox(height : 20.0),
            Text("Current Orders",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 20.0),
            Column(
            children: _currentorders.map(_buildOrders).toList(),
          ),
          ],
        
        ),
    );
  }
}
   Widget _buildOrders(current_orders orders){
    return Container(
        margin: EdgeInsets.only(bottom: 20.0),
        child: Orders(
          id: orders.id,
          service_name: orders.service_name,
          order_time: orders.order_time,
          customer_number: orders.customer_number,
          customer_location: orders.customer_location,
          price: orders.price,
        ),
      );
  }