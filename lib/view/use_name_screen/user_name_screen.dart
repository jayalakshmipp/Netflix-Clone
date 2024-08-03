import 'package:flutter/material.dart';
import 'package:netflix_clone_app/dammy_db.dart';
import 'package:netflix_clone_app/utils/constants/color_constants.dart';
import 'package:netflix_clone_app/utils/constants/image_constants.dart';
import 'package:netflix_clone_app/view/bottom_nav_screen/bottom_nav_screen.dart';
import 'package:netflix_clone_app/view/global_widgets/user_name_card.dart';
import 'package:netflix_clone_app/view/home_screen/home_screen.dart';

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
        body: Center(
            child: GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 75),
          shrinkWrap: true,
          itemCount: DummyDb.usersList.length + 1,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
             
              crossAxisSpacing: 10,
              mainAxisExtent: 130),
          itemBuilder: (context, index) {
            if (index < DummyDb.usersList.length) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BottomNavScreen())
                  ); 
                },
                child: UserNameCard(imagePath:  DummyDb.usersList[index]["imagePath"].toString(), userName:  DummyDb.usersList[index]["name"].toString() ,),
                
                
                // Column(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: [
                //     Image.asset(
                //       DummyDb.usersList[index]["imagePath"].toString(),
                //     ),
                //     const SizedBox(
                //       height: 4,
                //     ),
                //     Text(
                //       DummyDb.usersList[index]["name"].toString(),
                //       style: TextStyle(color: Colors.white, fontSize: 13.25),
                //     )
                //   ],
                // ),
              );
            } else {
              return InkWell(
                onTap: () {
                  DummyDb.usersList.add(
                      {"imagePath": ImageConstants.USER1_PNG, "name": "mnop"});

                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      backgroundColor: ColorConstants.green,
                      content: Text("Feature not available")));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(ImageConstants.ADD_PNG),
                    SizedBox(
                      height: 20,
                    ),
                    Text(ImageConstants.ADD_PNG),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Add Profile",
                      style: TextStyle(
                        color: ColorConstants.mainWhite,
                        fontSize: 13.25,
                      ),
                    )
                  ],
                ),
              );
            }
          },
        )));
  }
}
