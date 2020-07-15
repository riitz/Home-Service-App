import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget{
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 70.0, left: 20.0, right: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("Favourite Services",style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
            ),
            Container(
              height: 10,
              width: 50,
            ),
            Icon(Icons.favorite, color: Colors.red,),
            //TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold);
          ],
        ),
      ),
    );
  }
}