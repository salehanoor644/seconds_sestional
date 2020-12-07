import 'package:second_sestional/main.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'main.dart';

void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Future<Widget> loadFromFuture() async {

    // <fetch data from server. ex. login>

    return Future.value(new Home());
  }

  @override
  Widget build(BuildContext context) {
    return new SplashScreen(

        seconds: 8,
        navigateAfterSeconds: new Home(),


        title:Text('Saleha Noor\n''FA17-BSE-073',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),
        ),


        image: new Image.asset('image.png'),

        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        loaderColor: Colors.red
    );
  }
}