import 'package:flutter/material.dart';
import 'package:netflix_clone_app/dammy_db.dart';
import 'package:netflix_clone_app/utils/constants/color_constants.dart';
import 'package:netflix_clone_app/view/comming_soon_screen/widgets/custom_video_card.dart';
import 'package:netflix_clone_app/view/comming_soon_screen/widgets/new_arrival_card.dart';

class CommingSoonScreen extends StatelessWidget {
  const CommingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
          titleSpacing: 0,
          backgroundColor: Colors.transparent,
          leading: Center(
            child: CircleAvatar(
              backgroundColor: ColorConstants.primaryRed,
              radius: 16,
              child: Icon(
                Icons.notifications_sharp,
                size: 20,
                color: ColorConstants.mainWhite,
              ),
            ),
          ),
          title: Text(
            "Notifications",
            style: TextStyle(
                color: ColorConstants.mainWhite,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
                children: List.generate(
              DummyDb.newArrivalCard.length,
              (index) => NewArrivalCard(
                imageUrl: DummyDb.newArrivalCard[index],
              ),
            )),
            SizedBox(height:  25,),
            Column(
              children: 
                List.generate(
                  1,
                  (index) => CustomVideoCard()
                  ),
            )
              ],
            ),
      )
      
      );
   
  }
}