import 'package:flutter/material.dart';
//import 'package:myproject/pages/login.dart';
import 'package:myproject/src/widgets/bought_package.dart';
import 'package:myproject/src/widgets/home_top_info.dart';
import 'package:myproject/src/widgets/people_category.dart';
import 'package:myproject/src/widgets/search_file.dart';
import 'package:myproject/pages/all_services.dart';

// Data

import 'package:myproject/src/data/services_data.dart';

// Model 
import 'package:myproject/models/services_model.dart';
//import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  /*
  SharedPreferences sharedPreferences;
    // Pages
  @override
  void initState() { 
    super.initState();
    checkLoginStatus();
  }
  checkLoginStatus() async{
    sharedPreferences = await SharedPreferences.getInstance();
    if (sharedPreferences.getString("token") == null) {
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => LoginPage()), (Route<dynamic> route) => false);
    }
    
  }
  */
  List<Service> _services = services;
  

  @override
  Widget build(BuildContext context){
    
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        children: <Widget>[
          HomeTopInfo(),
          PeopleCategory(),
          SizedBox(height: 20.0,),
          SearchField(),
          SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Frequently Ordered Services",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AllServices()),
            );
                },
                child: Text(
                  "View all",
                  style: TextStyle(
                    color: Colors.orangeAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Column(
            children: _services.map(_buildServices).toList(),
          ),
        ],
      ),
    );
  }
    Widget _buildServices(Service service){
    return Container(
        margin: EdgeInsets.only(bottom: 20.0),
        child: BoughtFood(
          id: service.id,
          name: service.name,
          imagePath: service.imagePath,
          category: service.category,
          discount: service.discount,
          price: service.price,
          ratings: service.ratings,
        ),
      );
  }
}
