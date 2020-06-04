import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trabalhoA5Slidy/app/modules/home/home_module.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Slidy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StreamBuilder<Object>(
        stream: FirebaseAuth.instance.onAuthStateChanged,
        builder: (context, snapshot) {

          if(snapshot.connectionState == ConnectionState.active){
            print("*** CONECTADO NO FIREBASE ***");
          }
          return HomeModule();
        }
      ),
    );
  }
}
