import 'package:flutter/material.dart';
import 'package:myproject/pages/order_cart.dart';
import 'package:myproject/src/data/customer_order.dart';
import 'package:myproject/src/widgets/order_card.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  List<CustomerSelectedOrder> _selectedorders = customerselectedorders;
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
             children: _selectedorders .map(_buildOrders).toList(),
            ),

      ],),
    );
  }
}
//this is for customer order section
 class CustomerOrder extends StatefulWidget {
   final String id;
   final String servicename;
   final String ordertime;
   final String employeename;
   final String employeenumber;
   final String price;
   CustomerOrder({
     this.id,
     this.servicename,
     this.ordertime,
     this.employeename,
     this.employeenumber,
     this.price,
   });
    @override
    _CustomerOrderState createState() => _CustomerOrderState();
  }
  
  class _CustomerOrderState extends State<CustomerOrder> {
    @override
    Widget build(BuildContext context) {
      return Material(
        child: ClipRRect(
        borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
      child: Stack(
        children: <Widget>[
            Container(
            height: 170.0,
            width: 340.0,
            child: Column(
              children: <Widget>[
                SizedBox(height: 15.0),
                Row(children: <Widget>[Text("Service Name",style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),),Text(" : "),Text(widget.servicename),],),
                SizedBox(height: 5.0,),
                Row(children: <Widget>[Text("Order Time",style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),),Text(" : "),Text(widget.ordertime),],),
                SizedBox(height: 5.0,),
                Row(children: <Widget>[Text("Employee Name",style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),),Text(" : "),Text(widget.employeename),],),
                SizedBox(height: 5.0,),
                Row(children: <Widget>[Text("Employee Number",style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),),Text(" : "),Text(widget.employeenumber),],),
                SizedBox(height: 20.0,),
                Row(
                  children: <Widget>[
                    buildButtonContainerCompleted(),
                    SizedBox(width: 150),
                                        Text(
                      "Nrs"+ " " + widget.price.toString(),
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.orangeAccent),
                    ),
                  ],
                )


              ],
            ),

             )
        ],
      ),
        ),
      );
    }
  }
   Widget _buildOrders(CustomerSelectedOrder customerorder){
    return Container(
        margin: EdgeInsets.only(bottom: 20.0),
        child: CustomerOrder(
          id: customerorder.id,
          servicename: customerorder.servicename,
          ordertime: customerorder.ordertime,
          employeename: customerorder.employeename,
          employeenumber: customerorder.employeenumber,
          price: customerorder.price,
        ),
      );
  }
   Widget buildButtonContainerCompleted(){
    return Container(
      height: 30.0,
      width: 90.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(23.0),
      gradient: LinearGradient(
        colors: [
          Color(0xFFFB415B),
          Color(0xFFEE5623)
        ],
        begin: Alignment.centerRight,
        end: Alignment.centerLeft
      )
    ),
    child: Center(
      child: Text(
        "Paid",
        style: TextStyle(
          color:Colors.white,
          fontSize: 15.0, 
        ),
      ),
    ),
  );
}
  
