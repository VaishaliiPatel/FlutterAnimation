import 'package:animation_demo/Screens.dart/HeroAnimation.dart';
import 'package:animation_demo/Screens.dart/StaggeredAnimation.dart';
import 'package:animation_demo/Screens.dart/TweenAnimation.dart';
import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  @override
  _TabBarScreenState createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  var _pages;
  var selectedIndex = 0;
  @override
  void initState() {
    _pages = [
      {
        "pages": HeroAnimation(),
        "title": "Hero Animation",
      },
      {
        "pages": TweenAnimation(),
        "title": "Tween Animation",
      },
      {
        "pages": StaggeredAnimation(),
        "title": "Stagger Animation",
      },
    ];
    super.initState();
  }

  void _selecteIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedIndex]['pages'],
      bottomNavigationBar: Container(
        child: Container(
          child: BottomNavigationBar(
            onTap: _selecteIndex,
            currentIndex: selectedIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: _pages[0]['title'],
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.video_call),
                label: _pages[1]['title'],
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.video_call),
                label: _pages[2]['title'],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
