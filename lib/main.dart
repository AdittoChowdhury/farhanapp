import 'dart:async';
import 'package:farhan_app/screens/Connectioncheck.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
    apiKey: "AIzaSyCc3fL3iIzbamnZvAI9wS11aInIfooZj9M",
    databaseURL: "https://farhanapp-8bc0e-default-rtdb.firebaseio.com/",
    projectId: "farhanapp-8bc0e",
    messagingSenderId: "950255184315",
    appId: "1:950255184315:android:f8f082170bca3d90207c9e",
  ));
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key key}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: cnnectioncheck(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.latoTextTheme(
            Theme.of(context).textTheme,
          ),
        ));
  }
}
