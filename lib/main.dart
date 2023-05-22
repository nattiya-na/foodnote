import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

import './screens/home_screen.dart';
import './screens/add_screen.dart';

void main() {
  runApp(const MyApp());
}

  class MyApp extends StatelessWidget {
    const MyApp({super.key});
    @override
    Widget build(BuildContext context) {
      Firebase.initializeApp();

      return MaterialApp(
        title: 'Food Note',
        theme: ThemeData(
          primarySwatch:Colors.orange,
          buttonTheme: ButtonTheme.of(context).copyWith(
            buttonColor:Colors.orange[300],
            textTheme: ButtonTextTheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),

            )
          )
          
          

        ),
        home: HomeScreen(),
        routes:{
          AddRestaurant.routeName: (ctx)=> AddRestaurant()


        }
      );
    }
  }



