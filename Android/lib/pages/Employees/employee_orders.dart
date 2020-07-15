import 'package:flutter/material.dart';
import 'package:myproject/models/employee_orders.dart';
import 'package:myproject/src/data/employee_selected_order.dart';
import 'package:myproject/src/widgets/employee_selected_orders.dart';

class Employee_Order extends StatefulWidget {
  Employee_Order({Key key}) : super(key: key);

  @override
  _Employee_OrderState createState() => _Employee_OrderState();
}

class _Employee_OrderState extends State<Employee_Order> {
  List<Employee_Selected_Order> _selectedorders = selected_orders;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      body: ListView(
        padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        children: <Widget>[
            Text("My Orders",
            style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
                ),
            SizedBox(height: 20.0),
            Column(
            children: _selectedorders.map(_buildOrders).toList(),
          ),

      ],
      ),
       
    );
  }
}
   Widget _buildOrders(Employee_Selected_Order selected_orders){
    return Container(
        margin: EdgeInsets.only(bottom: 20.0),
        child: Selected_Order(
          id: selected_orders.id,
          service_name: selected_orders.service_name,
          order_time: selected_orders.order_time,
          customer_number: selected_orders.customer_number,
          customer_location: selected_orders.customer_location,
          customer_name: selected_orders.customer_name,
          price: selected_orders.price,
        ),
      );
  }

