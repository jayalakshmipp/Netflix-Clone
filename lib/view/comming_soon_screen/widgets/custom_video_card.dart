import 'package:flutter/material.dart';
import 'package:netflix_clone_app/dammy_db.dart';
import 'package:netflix_clone_app/utils/constants/color_constants.dart';

class CustomVideoCard extends StatelessWidget {
  const CustomVideoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          DummyDb.newArrivalCard[2],
          height: 195,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 20,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.notifications_sharp,
                        size: 24,
                        color: ColorConstants.mainWhite,
                      ),
                      SizedBox(height: 7),
                      Text(
                        "Remind Me",
                        style: TextStyle(
                            color: ColorConstants.mainWhite.withOpacity(.83)),
                      )
                    ],
                  ),
                  SizedBox( width: 45,),
                      Column(
                    children: [
                      Icon(
                        Icons.share,
                        size: 24,
                        color: ColorConstants.mainWhite,
                      ),
                      SizedBox(height: 7),
                      Text(
                        "Share",
                        style: TextStyle(
                            color: ColorConstants.mainWhite.withOpacity(.83)),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
