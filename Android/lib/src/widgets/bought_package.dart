import 'package:flutter/material.dart';
import 'package:myproject/pages/favorite_page.dart';

class BoughtFood extends StatefulWidget {
  final String id;
  final String name;
  final String imagePath;
  final String category;
  final double price;
  final double discount;
  final double ratings;


  

  BoughtFood(
      {this.id,
      this.name,
      this.imagePath,
      this.category,
      this.price,
      this.discount,
      this.ratings});

  @override
  _BoughtFoodState createState() => _BoughtFoodState();
}

class _BoughtFoodState extends State<BoughtFood> {
  var cardText = TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold);
          //this set stores the user choices of the services
  //final Set<BoughtFood> _saved = Set<BoughtFood>();
  var Service_Details = new Set();
  bool alreadySaved = false; 
  

 
  @override
  Widget build(BuildContext context) {
    //already Saved Saves the boolean to check already saved
    final bool alreadySaved = Service_Details.contains(context); 
    return Material(
      child:ClipRRect( 
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
      child: Stack(
        children: <Widget>[
          Container(
            height: 230.0,
            width: 340.0,
            child: Image(
              image: AssetImage(
                widget.imagePath
              ),
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 0.0,
            bottom: 0.0,
            width: 340.0,
            height: 60.0,
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Colors.black, Colors.black12])),
            ),
          ),
          Positioned(
            left: 10.0,
            bottom: 10.0,
            right: 10.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.name,
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Theme.of(context).primaryColor,
                          size: 16.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Theme.of(context).primaryColor,
                          size: 16.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Theme.of(context).primaryColor,
                          size: 16.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Theme.of(context).primaryColor,
                          size: 16.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Theme.of(context).primaryColor,
                          size: 16.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "(" + widget.ratings.toString() + " Reviews)",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      widget.price.toString(),
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.orangeAccent),
                    ),
                    Text("Price",
                        style: TextStyle(color: Colors.grey))
                  ],
                ),
              ],
            ),
          ),
                
          Container(
            height: 50,
            width: 340,
                child: Align(
                alignment: Alignment.topRight,
                child: IconButton(
                icon: new Icon(
                alreadySaved ? Icons.favorite : Icons.favorite_border,
                color: alreadySaved ? Colors.red : null,
                  ),
                onPressed: (){
                  setState(() {
                   if (alreadySaved) {
                     Service_Details.remove(context);
                     } else { 
                      Service_Details.add(context); 
                       } 
                  });
                  },
                  )
                ),
          ),
          /*
          Container(
            height: 50,
            width: 50,
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton( 
                  icon: new Icon(Icons.collections),
                ),
              ),

          )
          */
          
        ],
      ),
    ),
    );
  }
}
