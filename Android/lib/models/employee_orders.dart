import 'package:flutter/material.dart';

class Employee_Selected_Order {
  final String id;
  final String service_name;
  final String order_time;
  final String customer_number;
  final String customer_name;
  final String customer_location;
  final String price;

    Employee_Selected_Order({
    this.id,
    this.service_name,
    this.order_time,
    this.customer_number,
    this.customer_name,
    this.customer_location,
    this.price,
  });
  
}