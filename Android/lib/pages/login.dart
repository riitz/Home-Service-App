import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:myproject/pages/Employees/employee_homepage.dart';
import 'package:myproject/pages/homescreen.dart';

import 'package:myproject/screens/main_screen.dart';
import 'package:myproject/pages/signup_catergory.dart';

//For Login
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'dart:convert' as convert;
import 'package:myproject/pages/testingfinal.dart';


Future<http.Response> fetchlogindetails() {
 // return http.get('http://127.0.0.1:8000/auth/token/login/');
 // return http.get('http://192.168.0.110/auth/token/login');
   
}




class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {
  bool _isLoading = false;
   bool _isLoggedIn = false;
   bool _isHidden = false;
     void _toggleVisibility(){
    setState(() {
      _isHidden = !_isHidden;
    });
  }
   

// Creating function for login

customerSignin(String email, password) async {
  Map data = {
    'email' : email,
    'password' : password
  };
  var jsonData = null;
  
  Map <String, String> header = {"Content-type" :"application/json"};
  var inputdata = convert.jsonEncode(data);
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //var response = await http.post("http://127.0.0.1:8000/auth/token/login", headers: header, body: inputdata);
  //print('server response ${data}');
  //print(response.body);
  var response = await http.post("http://10.0.2.2:8000/auth/token/login", headers: header, body: inputdata);
 
  if(response.statusCode == 200) {
    jsonData = json.decode(response.body);
    setState(() {
      _isLoading = false;
      sharedPreferences.setString("token", jsonData['token']);
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => HomeScreen()), (Route<dynamic> route) => false);

    });
  }
  else {
    print(response.body);
  }
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
       body: Container(
         padding: EdgeInsets.only(top: 100.0,right:20.0,left:20.0,bottom:20.0),
            child:
            /*
             _isLoading ? Center(child: CircularProgressIndicator()):
            
            _isLoggedIn
            ? Container(
              
            ) 
            :
            */
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
           children: <Widget>[
             Text('Home Services',
             style: TextStyle(
               fontSize: 40.0,
              // fontWeight: FontWeight.bold,
               fontStyle: FontStyle.italic,
               color: Theme.of(context).primaryColor

             ),
             ),
             SizedBox(height: 40.0,),
             Text(
               "LOGIN",
               style: TextStyle(
                 fontSize:32.0,
                 fontWeight:FontWeight.bold,
                 color: Theme.of(context).primaryColor
               ),
             ),
             SizedBox(height: 40.0,),
            // buildTextField("Email"),
            Column(
              children: <Widget>[
                buildEmailTextField("Email"),
              ],
            ),
            //buildEmailTextField("Email"),
          
             SizedBox(height:20.0),
            // buildTextField("Password"),
            buildPasswordTextField("Password"),
             
             SizedBox(
               height: 20.0,
             ),
             Container(
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: <Widget>[
                   Text(
                     "Forgotten Password?",
                     style: TextStyle(
                       color: Theme.of(context).primaryColor,
                     ),

                   ),
                 ],
               ),
             ),
             SizedBox(height:50.0),
             Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _isLoading = true;
                      });
                      customerSignin(emailController.text, passwordController.text);
                      print(emailController.text);
                      print(passwordController.text);

                    },
                   child: buildButtonContainer(),
                  ),
             Container(
               margin: const EdgeInsets.all(5.0),
                width: 5.0,
               height: 5.0,
             ),
             GestureDetector(
               onTap: (){
                 Navigator.push(
                  context,
                   MaterialPageRoute(builder: (context) => EmployeeHomePage()),
                   );
                       
               },
               child: buildButtonGmailContainer(),
             ),
            // buildButtonGmailContainer(),
                ],
                ),



             SizedBox(height: 10.0,),
             Container(
               child: Center(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Text("Dont have an account?"),
                     SizedBox(width: 10.0,),GestureDetector(
                       onTap: (){
                          Navigator.push(
                                      context,
                                       
                                      // MaterialPageRoute(builder: (context) => SecondRoute()),
                                      MaterialPageRoute(builder: (context) => Signup_Category()),
                                       );
                       },
                       child:Text("Sign Up",style:TextStyle(color: Theme.of(context).primaryColor))
                     ),
                     
                   ]
                 )
                )
             ),
              SizedBox(height: 5.0,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                     SizedBox(width: 10.0,),GestureDetector(
                       onTap: (){
                          Navigator.push(
                                      context,
                                       MaterialPageRoute(builder: (context) => main_screen()),
                                     //  MaterialPageRoute(builder: (context) => ServiceDetailPage()),
                                       );
                       },
                       child:Text("Skip for now",style:TextStyle(color: Theme.of(context).primaryColor))
                     ),
                   // Text("Skip for now",style:TextStyle(color: Theme.of(context).primaryColor)),
                    
                  ]
                ),
                //child: Text("Skip for now",style:TextStyle(color: Theme.of(context).primaryColor)),
              ),
             

           ],
         ),
       ),
    );
  }
  Widget buildTextField(String hintText){
    return TextField(
      decoration: InputDecoration(
        hintText:hintText,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.0,
        ),
          border: OutlineInputBorder(
          borderRadius:BorderRadius.circular(20.0),
          ),
          prefixIcon: hintText == "Email" ? Icon(Icons.email) : Icon(Icons.lock),
          suffixIcon: hintText == "Password" ? IconButton(
            onPressed: (){
              _toggleVisibility();
            },
            icon: Icon(Icons.visibility_off),
            ) : null
        ),
        obscureText: hintText == "Password" 
    );
}
}
TextEditingController emailController = new TextEditingController();
TextEditingController passwordController = new TextEditingController();


Widget buildButtonContainer(){
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
        "Login",
        style: TextStyle(
          color:Colors.white,
          fontSize: 18.0, 
        ),
      ),
    ),
  );
}
Widget buildButtonGmailContainer(){
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
      child: GestureDetector(
        onTap: (){_handleSignIn();},
                child:Text(
                "Login as Service Provider",
        
                        style: TextStyle(
                          color:Colors.white,
                          fontSize: 18.0, 
                        ),
                        
                      ),)
                    ),
        
                  ); 
                }
        
        void _handleSignIn() {
          print("Awesome");
}
  Widget buildEmailTextField(String hintText){
    return TextField(
      controller: emailController,
      decoration: InputDecoration(
        hintText:hintText,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.0,
        ),
          border: OutlineInputBorder(
          borderRadius:BorderRadius.circular(20.0),
          ),
          prefixIcon: hintText == "Email" ? Icon(Icons.email) : Icon(Icons.lock),
        ),
        obscureText: hintText == "Password" 
    );
}
  Widget buildPasswordTextField(String hintText){
    return TextField(
      controller: passwordController,
      decoration: InputDecoration(
        hintText:hintText,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.0,
        ),
          border: OutlineInputBorder(
          borderRadius:BorderRadius.circular(20.0),
          ),
          prefixIcon: Icon(Icons.lock),
          suffixIcon: hintText == "Password" ? IconButton(
            onPressed: (){
            },
            icon: Icon(Icons.visibility_off),
            ) : null
        ),
        obscureText: hintText == "Password" 
    );
}


