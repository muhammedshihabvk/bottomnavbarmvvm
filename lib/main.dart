import 'package:bottomnavbarmvvm/bottomNavBarProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BottomNavBarProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final bottomNavBar = Provider.of<BottomNavBarProvider>(context);
    final selectedIndex = bottomNavBar.getSelectedIndex;

    return Scaffold(
      body: bottomNavBar.bodyWidgets[selectedIndex],
      backgroundColor: Colors.teal,
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            topLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
            bottomLeft: Radius.circular(40),
          ),
          child: BottomNavigationBar(
            // fixedColor: Colors.yellow,
            elevation: 1,
            unselectedItemColor: Colors.black,
            showUnselectedLabels: true,
            iconSize: 25,
            backgroundColor: Colors.transparent,
            items: [...bottomNavBar.getNavBarItems],
            currentIndex: selectedIndex,
            selectedItemColor: Colors.teal,
            onTap: (value) => bottomNavBar.selectedIndex(value),
          ),
        ),
      ),
    );
  }
}
