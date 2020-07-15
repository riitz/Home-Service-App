import 'package:flutter/material.dart';
import 'signup.dart';

class Signup_Category extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("Registration"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20.0,right:20.0,left:20.0,bottom:20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Please select one option for registration',
            style: TextStyle(
               fontSize: 20.0,
                color: Colors.black
            ),
            
            ),
             SizedBox(height: 120.0,),
             GestureDetector(
                       onTap: (){
                          Navigator.push(
                                      context,
                                       
                                       MaterialPageRoute(builder: (context) => CustomerRegistration()),
                                       );
                       },
                       child: RegistrationButtonCustomer(),
             ),
             SizedBox(height: 30),
             
             GestureDetector(
               onTap: (){
                 Navigator.push(
                   context, 
                   
                 MaterialPageRoute(builder: (context) => EmployeeRegistration()),
                   );
               },
               child:  RegistrationButtonEmployee(),
             ),
             
             
          ],
          
        ),
      )
     
    );
  }
}
Widget RegistrationButtonCustomer(){
    return Container(
      height: 56.0,
      width: 350.0,
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
        "Register as Customer",
        style: TextStyle(
          color:Colors.white,
          fontSize: 18.0, 
        ),
      ),
    ),
  );
}
Widget RegistrationButtonEmployee(){
    return Container(
      height: 56.0,
      width: 350.0,
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
        "Register as an Employee",
        style: TextStyle(
          color:Colors.white,
          fontSize: 18.0, 
        ),
      ),
    ),
  );
}