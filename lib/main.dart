import 'package:flutter/material.dart';
import 'package:netflix_clone_app/view/home_screen/home_screen.dart';
import 'package:netflix_clone_app/view/splsh_screen/splsh_screen.dart';

void main(){
  runApp(MyWidget());
}
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SpalshScreen(),
    );
  }
}