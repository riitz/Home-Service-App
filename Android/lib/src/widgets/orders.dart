import 'package:flutter/material.dart';
class Orders extends StatefulWidget {
  final String id;
  final String service_name;
  final String order_time;
  final String customer_number;
  final String customer_location;
  final String price;
    Orders(
      {this.id,
      this.service_name,
      this.order_time,
      this.customer_number,
      this.customer_location,
      this.price,
      });

  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
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
            height: 200.0,
            width: 340.0,
            child: Column(
              children: <Widget>[
                SizedBox(height: 15.0,),
                Row(children: <Widget>[Text("Service Name",style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),),Text(" : "),Text(widget.service_name),],),
                SizedBox(height: 5.0,),
                Row(children: <Widget>[Text("Order Time",style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),),Text(" : "),Text(widget.order_time),],),
                SizedBox(height: 5.0,),
                Row(children: <Widget>[Text("Customer Number",style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),),Text(" : "),Text(widget.customer_number),],),
                SizedBox(height: 5.0,),
                Row(children: <Widget>[Text("Customer Location",style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),),Text(" : "),],),
                (SizedBox(height:5.0)),
                Row(children: <Widget>[Text(widget.customer_location),],),

                SizedBox(height: 40.0),

                Row(
                  children: <Widget>[
                    buildButtonContainerAccept(),
                    SizedBox(width: 20.0),
                    buildButtonContainerDecline(),
                    SizedBox(width: 40.0),
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
            )
          )
        ],
      ),
      ),
    );
  }
}
Widget buildButtonContainerAccept(){
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
        "Accept",
        style: TextStyle(
          color:Colors.white,
          fontSize: 18.0, 
        ),
      ),
    ),
  );
}

Widget buildButtonContainerDecline(){
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
        "Decline",
        style: TextStyle(
          color:Colors.white,
          fontSize: 18.0, 
        ),
      ),
    ),
  );
}