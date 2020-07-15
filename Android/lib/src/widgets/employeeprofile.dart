import 'package:flutter/material.dart';
import 'package:myproject/src/widgets/custom_listtile.dart';

class checkprofile extends StatefulWidget {
  final String id;
  final String employeename;
  final String employeeemail;
  checkprofile({
    this.id,
    this.employeename,
    this.employeeemail,
  });

  @override
  _checkprofileState createState() => _checkprofileState();
}

class _checkprofileState extends State<checkprofile> {
  bool turnOnNotification = false;
  bool turnOnLocation = false;
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
            height: 800.0,
            width: 340.0,
            child: Column(
              children: <Widget>[
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
                      image: AssetImage("assets/images/aaa.jpg",),
                      fit: BoxFit.cover
                      ),
                      
                  ),
                  
                ),
                SizedBox(width: 30,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(widget.employeename,style: TextStyle(
                      fontSize:22.0,
                    ),),
                    SizedBox(height:10.0),
                    Text(widget.employeeemail,style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10.0, 
                    ),),
                    SizedBox(height:10.0),
                    Container(
                      height: 30.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                      border: Border.all(
                      color: Color(0xFFFB415B),
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Center(
                        child: Text(
                          "Edit",
                          style: TextStyle(
                          color: Color(0xFFFB415B),
                          fontSize: 16.0,
                      ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text("Beautician", style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0, 
                    ),),
                    SizedBox(height: 10.0),

                  ],
                )
                  
                ],
                
                ),
            SizedBox(height:30.0),
            Row(
              children: <Widget>[
                                                   Text("Total Earning: Nrs 5500", style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0, 
                    ),),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              children: <Widget>[
            Text("Account",style: TextStyle(
              fontSize: 20.0,
              fontWeight:FontWeight.bold,
            ),
            ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Card(
              child: Padding(padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  CustomListTile(
                     icon: Icons.location_on,
                     text: "Location",
                  ),
                  Divider(
                     height: 10.0,
                     color: Colors.grey,
                  ),
                  CustomListTile(
                     icon: Icons.visibility,
                     text: "Change Password",
                   ),
                 Divider(
                     height: 10.0,
                     color: Colors.grey,
                   ),
                CustomListTile(
                     icon: Icons.payment,
                     text: "Payment",
                   ), 
                  
                ],
              ),
              ),
            ),
            SizedBox(height:20.0),
            Row(children: <Widget>[
            Text("Notification",
              style: TextStyle(
              fontSize: 20.0,
              fontWeight:FontWeight.bold,
            ),
            ),
            ],
            ),
           Card(
              child: Padding(padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("App Notification",
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                        Switch(
                          value: turnOnNotification, 
                          onChanged: (bool value){
                            setState(() {
                              turnOnNotification = value;
                            });
                          },
   
                          ),
                    ],

                  ),
                    Divider(
                     height: 10.0,
                     color: Colors.grey,
                   ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Location Tracking",
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                        ),
                        Switch(
                          value: turnOnLocation, 
                          onChanged: (bool value){
                            setState(() {
                              turnOnLocation = value;
                            });
                          },
                          
                          ),
                      ],
                    ),
                ],
              ),
              ),        
            ),
            SizedBox(height:20.0),
            Row(children: <Widget>[
            Text("Others",
              style: TextStyle(
              fontSize: 20.0,
              fontWeight:FontWeight.bold,
            ),
            ),
            ],),
            Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Help and Support",style: TextStyle(
                        fontSize: 16.0,
                      ),),
                      SizedBox(
                        height: 10.0,
                      ),
                    Divider(
                     height: 10.0,
                     color: Colors.grey,
                   ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text("Currency",style: TextStyle(
                        fontSize: 16.0,
                      ),),
                      SizedBox(
                        height: 10.0,
                      ),
                    Divider(
                     height: 10.0,
                     color: Colors.grey,
                   ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text("Privacy Policies",style: TextStyle(
                        fontSize: 16.0,
                      ),)
                    ],
                  ),
                ),
              ),
            ),

              ],
            ),
            ),
        ],
      )
      ),
    );   
  }
}