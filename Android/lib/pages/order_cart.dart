import 'package:flutter/material.dart';

class Order_Card extends StatefulWidget {

  @override
  _Order_CardState createState() => _Order_CardState();
}

class _Order_CardState extends State<Order_Card> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Row(
           mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 80.0,
              height: 40.0,
              decoration: BoxDecoration(
               border: Border.all(color: Color(0xFFD3D3D3), width: 2.0), 
               borderRadius: BorderRadius.circular(10.0),
              ),
              child: DropdownButton(items: null, onChanged: null)

            )
          ],
        ),
        ),
     
    );
  }
}