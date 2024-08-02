import 'package:flutter/material.dart';
import 'package:netflix_clone_app/utils/constants/color_constants.dart';
import 'package:netflix_clone_app/view/comming_soon_screen/comming_soon_screen.dart';
import 'package:netflix_clone_app/view/home_screen/home_screen.dart';
import 'package:netflix_clone_app/view/search_screen/search_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {

  int selectedIndex = 0;
  List<Widget> myScreen = [
    HomeScreen(),
    SearchScreen(),
    CommingSoonScreen(),
    Container(color: ColorConstants.purple,),
    Container(color: ColorConstants.grey,),
    
  ]; //to change screen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: myScreen[selectedIndex],
        backgroundColor: ColorConstants.mainBlack,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          backgroundColor: ColorConstants.mainBlack,
          selectedItemColor: ColorConstants.mainWhite,
          unselectedItemColor: ColorConstants.grey,
          type: BottomNavigationBarType.fixed,
          unselectedFontSize: 10,
          selectedFontSize: 10,
          items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.search), label: "Search"),
             BottomNavigationBarItem(
            icon: Icon(Icons.video_collection_outlined), label: "coming soon"),
            BottomNavigationBarItem(
              icon: Icon(Icons.file_download_sharp), label: "Downloads"),
              BottomNavigationBarItem(
              icon: Icon(Icons.menu), label: "More"),
        ],
        
        onTap: (value){
          selectedIndex = value;
          setState((){});        
          }
        ));
  }
}
