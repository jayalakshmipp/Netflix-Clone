import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix_clone_app/dammy_db.dart';
import 'package:netflix_clone_app/utils/constants/color_constants.dart';
import 'package:netflix_clone_app/utils/constants/image_constants.dart';
import 'package:netflix_clone_app/view/global_widgets/user_name_card.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildUserSelectionSection(),
            SizedBox(
              height: 9,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.edit,
                  color: ColorConstants.mainWhite,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "Manage Profile",
                  style: TextStyle(color: ColorConstants.mainWhite),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            _buildReferralSection(),
            SizedBox(
              height: 10,
            ),
            Row(
           
              children: [
                Icon(
                  Icons.check,
                  color: ColorConstants.mainWhite,
                  size: 30,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "My List",
                  style: TextStyle(color: ColorConstants.mainWhite,
                  fontWeight: FontWeight.bold),
                )
              ],
            ),
            Divider(color: ColorConstants.grey,),
             Text(
                  "App Settings ",
                  style: TextStyle(color: ColorConstants.mainWhite,
                  fontWeight: FontWeight.bold),
                ),
                 SizedBox(height: 16),
                  Text(
                  "Account",
                  style: TextStyle(color: ColorConstants.mainWhite,
                  fontWeight: FontWeight.bold),
                ), 
                 SizedBox(height: 16),
                 Text(
                  "Help",
                  style: TextStyle(color: ColorConstants.mainWhite,
                  fontWeight: FontWeight.bold),
                ),
                 SizedBox(height: 16),
                 Text(
                  "Sign Out",
                  style: TextStyle(color: ColorConstants.mainWhite,
                  fontWeight: FontWeight.bold),
                )
          ],
        ),
      ),
    );
  }

  Container _buildReferralSection() {
    return Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 19),
            color: ColorConstants.grey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.sms,
                      color: ColorConstants.mainWhite,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      "Tell friends about Netflix",
                      style: TextStyle(
                          color: ColorConstants.mainWhite,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: ColorConstants.mainWhite,
                      fontSize: 10,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 11,
                ),
                Text(
                  "Terms and Conditions",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      decorationThickness: 2,
                      decoration: TextDecoration.underline,
                      decorationColor: ColorConstants.mainWhite,
                      color: ColorConstants.mainWhite,
                      fontSize: 10,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 11,
                ),
                Row(
                  children: [
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                          fillColor: ColorConstants.mainBlack,
                          filled: true,
                          border: InputBorder.none),
                    )),
                    SizedBox(
                      width: 7,
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      color: ColorConstants.mainWhite,
                      child: Text(
                        "Copy Link",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 21,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      size: 35,
                      Icons.facebook,
                      color: ColorConstants.blue,
                    ),
                    SizedBox(
                      height: 41,
                      child: VerticalDivider(
                        color: ColorConstants.mainWhite,
                      ),
                    ),
                    Icon(
                      size: 35,
                      Icons.watch_later,
                      color: ColorConstants.blue,
                    ),
                    SizedBox(
                      height: 41,
                      child: VerticalDivider(
                        color: ColorConstants.mainWhite,
                      ),
                    ),
                    Icon(
                      size: 35,
                      Icons.facebook,
                      color: ColorConstants.blue,
                    ),
                    SizedBox(
                      height: 41,
                      child: VerticalDivider(
                        color: ColorConstants.mainWhite,
                      ),
                    ),
                    Column(
                      children: [
                        Icon(
                          size: 35,
                          Icons.more_horiz,
                          color: ColorConstants.mainWhite,
                        ),
                        Text(
                          "More",
                          style: TextStyle(
                              fontSize: 17,
                               fontWeight: FontWeight.bold,
                               color: ColorConstants.mainWhite),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          );
  }

  Widget _buildUserSelectionSection() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
              children: List.generate(
                  DummyDb.usersList.length,
                  (index) => UserNameCard(
                        onCardPressed: () {
                          selectedIndex = index;
                          print(selectedIndex);
                          setState(() {});
                        },
                        height: index == selectedIndex ? 70 : 60,
                        width: index == selectedIndex ? 73 : 65,
                        imagePath:
                            DummyDb.usersList[index]["imagePath"].toString(),
                        userName: DummyDb.usersList[index]["name"].toString(),
                      ))),
          Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              height: 60,
              width: 63,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: ColorConstants.mainWhite)),
              child: Center(
                child: Icon(Icons.add, color: Colors.white, size: 30),
              )),
        ],
      ),
    );
  }
}
