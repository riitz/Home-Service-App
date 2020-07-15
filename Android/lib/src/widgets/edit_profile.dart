import 'package:flutter/material.dart';

// Data

import 'package:myproject/src/data/EditProfile_data.dart';

// Model 
import 'package:myproject/models/editprofile_model.dart';
class EditProfile extends StatefulWidget {
  

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
   List<EditProfile_model> _accountdetails = editprofile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
          padding: EdgeInsets.symmetric(vertical: 50.0,horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Edit Profile",style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 30.0,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 120.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60.0),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3.0,
                          offset: Offset(0,4.0),
                          color: Colors.black38
                        ),
                      ],
                       image: DecorationImage(
                        image: AssetImage("assets/images/profilepic.jpg",),
                        fit: BoxFit.cover
                        ),
                        
                    ),
                    
                  ),
                  SizedBox(width:100.0),
                  Column(
                    children: <Widget>[
                  Icon(
                    Icons.update,
                    size: 35.0,
                    
                    ),
                    SizedBox(height:40.0),
                  Icon(
                    Icons.delete,
                    size: 35.0,
                  ),
                    ],

                  ),

                
                ],
              ),
              SizedBox(
                height: 40.0
              ),
              Text(
                "Account",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            Column(
              children: _accountdetails.map(_buildAccountDetails).toList(),
            ),
              
              
              Card(
                  child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                   // children: _accountdetails.map(_buildAccontDetails).toList(),
                   children: <Widget>[
                      buildEditProfileTxtField("Email"),
                      SizedBox(height:20.0),
                      buildEditProfileTxtField("Email"),
                      SizedBox(height:20.0),
                      buildEditProfileTxtField("Email"),
                      SizedBox(height:20.0),
                    ],
                  ),
                  ),
              ),
              SizedBox(
                height: 0.0
              ),

              Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children:<Widget>[
                      buildRemoveButtonContainer(),
                      SizedBox(
                        height: 10.0,
                      ),
                      buildUpdateButtonContainer(),
                    ],
                  ),
                ),
            
              ),
              
              ],
              
          ),
        ),
      ),
    );
  }
}
    Widget _buildAccountDetails(EditProfile_model editprofile){
    return Container(
        margin: EdgeInsets.only(bottom: 20.0),
        
        //child: buildEditProfileTxtField("email")

    );

    }

Widget buildEditProfileTxtField(String hintText){
  return TextField(
    decoration: InputDecoration(
      hintText:hintText,
      hintStyle: TextStyle(
        color: Color(0xFFFB415B),
        fontSize: 16.0,
      ),
        border: OutlineInputBorder(
        borderRadius:BorderRadius.circular(20.0),
        ),
        prefixIcon: hintText == "Email" ? Icon(Icons.email) : Icon(Icons.lock),
        suffixIcon: hintText == "Password" ? IconButton(
          onPressed: (){},
          icon: Icon(Icons.visibility_off),
          ) : Container()
      ),
    );
}


Widget buildRemoveButtonContainer(){
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                Text(
          "Delete Account",
          style: TextStyle(
            color:Colors.white,
            fontSize: 18.0, 
          ),
        ),
              ]
      ),
    ),
  );
}
Widget buildUpdateButtonContainer(){
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                Text(
          "Update Account",
          style: TextStyle(
            color:Colors.white,
            fontSize: 18.0, 
          ),
        ),
              ]
      ),
    ),
  );
}