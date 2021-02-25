import 'package:flutter/material.dart';

class BottomNavBarProvider with ChangeNotifier {


  int _selectedIndex=0;

  List<BottomNavigationBarItem> _navBarItems = [
    BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home",),
    BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite"),
    BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "cart"),
    BottomNavigationBarItem(icon: Icon(Icons.shopping_basket), label: "wish list"),
    BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "settings"),
  ];

  List<Widget> _bodyWidgets = [
    Center(
      child: Container(width: 200,height: double.infinity,child: Text("Home"),color: Colors.black,),
    ),
    Center(
      child: Container(width: 200,height: 200,child: Text("favorite"),color: Colors.yellow,),
    ),
    Center(
      child: Container(width: 200,height: 200,child: Text("Cart"),color: Colors.white54,),
    ),
    Center(
      child: Container(width: 200,height: 200,child: Text("Wish List"),color: Colors.green,),
    ),
    Center(
      child: Container(width: 200,height: 200,child: Text("settings"),color: Colors.purpleAccent,),
    ),

  ];

  List<Widget> get bodyWidgets {
    return _bodyWidgets;
  }

  List<BottomNavigationBarItem> get getNavBarItems {
    return _navBarItems;
  }

  void selectedIndex(int value){
    _selectedIndex = value;
    notifyListeners();
  }

  int get getSelectedIndex{
    return _selectedIndex;
  }
}
