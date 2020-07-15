import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomerRegistration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("Customer Sign up page"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20.0,right:20.0,left:20.0,bottom:20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Customer Registration',
            style: TextStyle(
               fontSize: 30.0,
               fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor
            ),
            
            ),
            SizedBox(height: 40.0,),
            TextField(
              decoration: InputDecoration(
                prefixIcon:Icon(Icons.people),
                hintText: 'Name',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                ),
              border: OutlineInputBorder(
              borderRadius:BorderRadius.circular(20.0),
        ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                prefixIcon:Icon(Icons.email),
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                ),
              border: OutlineInputBorder(
              borderRadius:BorderRadius.circular(20.0),
        ),
              ),
            ), 
                        Expanded(
              flex: 1,
              child: Container(
              ),
            ), 
                        TextField(
              decoration: InputDecoration(
                hintText: 'Address',
                prefixIcon:Icon(Icons.location_on),
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                ),
              border: OutlineInputBorder(
              borderRadius:BorderRadius.circular(20.0),
        ),
              ),
            ),  
        Expanded(
              flex: 1,
              child: Container(
              ),
            ),
       TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon:Icon(Icons.security),
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                ),
              border: OutlineInputBorder(
              borderRadius:BorderRadius.circular(20.0),
        ),
              ),
            ), 
        Expanded(
              flex: 1,
              child: Container(
              ),
            ),
        TextField(
              decoration: InputDecoration(
                hintText: 'Phone Number',
                prefixIcon:Icon(Icons.phone),
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                ),                
              border: OutlineInputBorder(
              borderRadius:BorderRadius.circular(20.0),
        ),
              ),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                WhitelistingTextInputFormatter.digitsOnly
              ]
              
            ), 
             SizedBox(height:50.0),
             testbutton(),
              
          ]
        ),
      ),
    );
  }
}
Widget testbutton(){
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
        "Signup",
        style: TextStyle(
          color:Colors.white,
          fontSize: 18.0, 
        ),
      ),
    ),
  );
}


class EmployeeRegistration extends StatefulWidget {
  @override
  _EmployeeRegistrationState createState() => _EmployeeRegistrationState();
}

class Role {
  int id;
  String name;

  Role(this.id, this.name);

  static List<Role> getRoles(){
    return <Role>[
      Role(1, 'Plumber'),
      Role(2, 'Electrician'),
      Role(3, 'Painter'),
      Role(4, 'Beautician'),
      Role(5, 'Cleaner'),
    ];
  }
}

class _EmployeeRegistrationState extends State<EmployeeRegistration> {
  /*
  List<Role> _roles = Role.getRoles();
  List<DropdownMenuItem<Role>> _dropdownMenuItems;
  Role _selectedRole;
  @override
  void intitState(){
    _dropdownMenuItems = buildDropdownMenuItems(_roles);
    _selectedRole = _dropdownMenuItems[0].value;
    super.initState();
  }
  List<DropdownMenuItem<Role>> buildDropdownMenuItems(List roles)
    List<DropdownMenuItem<Role>> items = List();
    for (Role role in roles) {
      items.add(
        DropdownMenuItem(
          value: role,
          child: Text(role.name)
        ),
      );
    }
    return items;
    
}
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
        title: Text("Employee Sign up page"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20.0,right:20.0,left:20.0,bottom:20.0),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Employee Registration',
            style: TextStyle(
               fontSize: 30.0,
               fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor
            ),
            
            ),
            SizedBox(height: 40.0,),
                        TextField(
              decoration: InputDecoration(
                prefixIcon:Icon(Icons.people),
                hintText: 'Name',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                ),
              border: OutlineInputBorder(
              borderRadius:BorderRadius.circular(20.0),
        ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                prefixIcon:Icon(Icons.email),
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                ),
              border: OutlineInputBorder(
              borderRadius:BorderRadius.circular(20.0),
        ),
              ),
            ), 
                        Expanded(
              flex: 1,
              child: Container(
              ),
            ), 
                        TextField(
              decoration: InputDecoration(
                hintText: 'Address',
                prefixIcon:Icon(Icons.location_on),
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                ),
              border: OutlineInputBorder(
              borderRadius:BorderRadius.circular(20.0),
        ),
              ),
            ), 
        Expanded(
              flex: 1,
              child: Container(
              ),
            ),
            Container(
              child: Center(
                //child:  DropdownButton(items: listDrop, onChanged: null),
              ),
            ),

        Expanded(
              flex: 1,
              child: Container(
              ),
            ),
       TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon:Icon(Icons.security),
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                ),
              border: OutlineInputBorder(
              borderRadius:BorderRadius.circular(20.0),
        ),
              ),
            ), 
        Expanded(
              flex: 1,
              child: Container(
              ),
            ),
        TextField(
              decoration: InputDecoration(
                hintText: 'Phone Number',
                prefixIcon:Icon(Icons.phone),
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                ),                
              border: OutlineInputBorder(
              borderRadius:BorderRadius.circular(20.0),
        ),
              ),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                WhitelistingTextInputFormatter.digitsOnly
              ]
              
            ), 
             SizedBox(height:50.0),
             testbutton()
          ],

          ),

      ),       
    );
  }
}


/*
class EmployeeRegistration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
        appBar: AppBar(
        title: Text("Employee Sign up page"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20.0,right:20.0,left:20.0,bottom:20.0),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Employee Registration',
            style: TextStyle(
               fontSize: 30.0,
               fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor
            ),
            
            ),
            SizedBox(height: 40.0,),
                        TextField(
              decoration: InputDecoration(
                prefixIcon:Icon(Icons.people),
                hintText: 'Name',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                ),
              border: OutlineInputBorder(
              borderRadius:BorderRadius.circular(20.0),
        ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                prefixIcon:Icon(Icons.email),
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                ),
              border: OutlineInputBorder(
              borderRadius:BorderRadius.circular(20.0),
        ),
              ),
            ), 
                        Expanded(
              flex: 1,
              child: Container(
              ),
            ), 
                        TextField(
              decoration: InputDecoration(
                hintText: 'Address',
                prefixIcon:Icon(Icons.location_on),
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                ),
              border: OutlineInputBorder(
              borderRadius:BorderRadius.circular(20.0),
        ),
              ),
            ),  
        Expanded(
              flex: 1,
              child: Container(
              ),
            ),
       TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon:Icon(Icons.security),
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                ),
              border: OutlineInputBorder(
              borderRadius:BorderRadius.circular(20.0),
        ),
              ),
            ), 
        Expanded(
              flex: 1,
              child: Container(
              ),
            ),
        TextField(
              decoration: InputDecoration(
                hintText: 'Phone Number',
                prefixIcon:Icon(Icons.phone),
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                ),                
              border: OutlineInputBorder(
              borderRadius:BorderRadius.circular(20.0),
        ),
              ),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                WhitelistingTextInputFormatter.digitsOnly
              ]
              
            ), 
             SizedBox(height:50.0),
             Testbutton(),

          ],

          ),

      ),
    );
  }
}
*/

