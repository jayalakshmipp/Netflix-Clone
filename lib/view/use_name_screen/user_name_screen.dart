import 'package:flutter/material.dart';
import 'package:netflix_clone_app/dammy_db.dart';
import 'package:netflix_clone_app/utils/constants/color_constants.dart';
import 'package:netflix_clone_app/utils/constants/image_constants.dart';

class UserNameScreen extends StatelessWidget {
  const UserNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstants.mainBlack,
        appBar: AppBar(
          backgroundColor: ColorConstants.mainBlack,
          centerTitle: true,
          title: Image.asset(height: 37.2, ImageConstants.LOGO_PNG),
          actions: [
            Icon(
              Icons.edit,
              color: ColorConstants.mainWhite,
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
        body: GridView.builder(
            itemCount: DummyDb.usersList.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Container(
                child: Column(
                  children: [
                    Image.asset(DummyDb.usersList[index]["imagePath"]!),
                ],
              ),
          );
        }
      )
    );
  }
}
