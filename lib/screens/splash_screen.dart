

import 'dart:async';

import 'package:farhan_app/screens/login_page.dart';
import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({ Key key }) : super(key: key);

  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    
    super.initState();
    Timer(Duration(seconds: 4), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return LoginPage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlutterLogo(),
      
    );
  }
}