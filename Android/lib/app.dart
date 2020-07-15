import 'package:flutter/material.dart';
import 'package:myproject/pages/login.dart';
import 'package:splashscreen/splashscreen.dart';


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();


  
}

class _MyAppState extends State<MyApp> {

 
  @override


  
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new AfterSplash(),
      title: new Text('Welcome to Home Service Application',
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0
      ),),
      image: new Image.network('https://i.imgur.com/TyCSG9A.png'),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      onClick: ()=>print("Flutter Egypt"),
      loaderColor: Colors.red
    );
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       theme: ThemeData(
        primaryColor: Color(0xFFFB415B),
            brightness: Brightness.light,
          
            

      ),
        darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: LoginPage()
      
      
    );
  }
}


