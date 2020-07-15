import 'package:flutter/material.dart';


import 'package:myproject/src/widgets/bought_package.dart';

// Data

import 'package:myproject/src/data/All_Services_data.dart';

//Model
import 'package:myproject/models/all_services_model.dart';

class AllServices extends StatefulWidget {
  

  @override
  _AllServicesState createState() => _AllServicesState();
}

class _AllServicesState extends State<AllServices> {
  List<All_Services> _allservices = all_services;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        children: <Widget>[
          Text("All Services",
              style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
                ),
          ),
          Column(
            children: _allservices.map(_buildServices).toList(),
          ),
          
        ]
      )
    );
    
    
  }
      Widget _buildServices(All_Services service){
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


 