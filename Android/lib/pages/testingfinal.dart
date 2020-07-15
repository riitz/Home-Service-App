import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class ServiceDetailPage extends StatelessWidget {
  const ServiceDetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
       child: Scaffold(
         body:Column(children: <Widget>[
           Container(
             height: 200.0,
             width: 420.0,
             child: Image.asset("assets/images/facial.jpg",
             fit: BoxFit.cover,),
           ),
           SizedBox(height: 10.0),
           Row(
             children: <Widget>[
             Text("Face cleansing", style: TextStyle(fontSize: 30.0 , fontWeight: FontWeight.bold),), 
             (SizedBox(width:160.0)),
              Icon(
               Icons.favorite,
               color: Colors.red,
               size: 30.0,
               ),
           ],
           ),
           SizedBox(height: 10.0),
           Column(
             children: <Widget>[
               Text("Women spend a fortune on beauty products but still feel unappealing to others. The secret to have a bright face is actually very simple. Just follow a “Beauty Regimen”. Beauty regimen includes removing make up, washing face, exfoliating, moisturizing and cleansing at night. The most important part of daily beauty routine is “Face cleansing”.", style: TextStyle(fontSize: 20.0),
              
               ),
               FlatButton(
    onPressed: () {
        DatePicker.showDateTimePicker(context,
                              showTitleActions: true,
                              minTime: DateTime(2018, 3, 5),
                              maxTime: DateTime(2019, 6, 7), onChanged: (date) {
                            print('change $date');
                          }, onConfirm: (date) {
                            print('confirm $date');
                          }, currentTime: DateTime.now(), locale: LocaleType.en);
    },
    child: Text(
        'Please select time and date to order the service',
        style: TextStyle(color: Colors.blue),
    )),
    SizedBox(height: 60.0),
    buildButtonContainer(),
             ],
           )

         ],
         )
       ),
    );
  }
}
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
        "Order Now",
        style: TextStyle(
          color:Colors.white,
          fontSize: 18.0, 
        ),
      ),
    ),
  );
}