import 'package:flutter/material.dart';

import 'add_screen.dart';

class SavedScreen extends StatefulWidget {
  @override
  _SavedScreenState createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:Text('savedScreen')),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          Navigator.of(context).pushNamed(AddRestaurant.routeName);
        } ,
        tooltip: 'add Restaurant',
        child: const Icon(Icons.add)
    ));
  }
}