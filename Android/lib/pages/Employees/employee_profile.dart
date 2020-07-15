import 'package:flutter/material.dart';
import 'package:myproject/models/employee_profile.dart';
import 'package:myproject/src/data/employee_profiledata.dart';
import 'package:myproject/src/widgets/employeeprofile.dart';

class EmployeeProfile extends StatefulWidget {
  @override
  _EmployeeProfileState createState() => _EmployeeProfileState();
}

class _EmployeeProfileState extends State<EmployeeProfile> {
  List<Employeeprofile> _profile = profiledetails;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      body: ListView(
        padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        children: <Widget>[
          Text("Profile",
            style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
            
          ),
          SizedBox(
            height: 20.0,
          ),
          Column(
            children: _profile.map(_buildOrders).toList(),

          )
        ],
      ),

    );
  }
}
   Widget _buildOrders(Employeeprofile selected_orders){
    return Container(
        margin: EdgeInsets.only(bottom: 20.0),
        child: checkprofile(
          id: selected_orders.id,
          employeename: selected_orders.employeename,
          employeeemail: selected_orders.employeeemail,
        ),
      );
  }
   Widget test(){
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
        "Completed",
        style: TextStyle(
          color:Colors.white,
          fontSize: 15.0, 
        ),
      ),
    ),
  );
}