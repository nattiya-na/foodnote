import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './wishlist_screen.dart';
import './setting_screen.dart';
import './saved_screen.dart';
import './add_screen.dart';

// saved place
class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List pages = [
    
    SavedScreen(),
    WishlistScreen(),
    SettingScreen()
  ];

  int currentIndex =0;

  void onTap(int index){
    setState(() {
      currentIndex = index;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[currentIndex],

      appBar: AppBar(
        title: const Text('FoodNote')
      ),
      
      
      bottomNavigationBar: BottomNavigationBar(
        
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.orange[400],
        unselectedItemColor: Colors.grey,
        elevation: 0,

        items: [
          
          BottomNavigationBarItem(
            label: 'Saved List'
            ,icon: const Icon(Icons.checklist_rounded),
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.favorite_border),
              label: 'Wish List'
            ),
            BottomNavigationBarItem(icon: Icon(Icons.settings,
            
            ),
            label: 'Settings'
            )
        ],
        
       ) ,

      
    );
  }
}