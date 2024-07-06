import 'package:flutter/material.dart';
import 'package:netflix_clone_app/utils/constants/image_constants.dart';
import 'package:netflix_clone_app/view/home_screen/home_screen.dart';
import 'package:netflix_clone_app/view/use_name_screen/user_name_screen.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {

@override
  void initState() {
   Future.delayed(Duration(seconds: 3)).then(
    (value) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context)=> UserNameScreen (),
        )
      );
    },
   );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center
      (child: Image.asset(ImageConstants.LOGO_PNG ),
      ),
    );
  }
}