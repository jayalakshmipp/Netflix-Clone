
import 'package:flutter/material.dart';
import 'package:netflix_clone_app/dammy_db.dart';
import 'package:netflix_clone_app/utils/constants/color_constants.dart';
import 'package:netflix_clone_app/utils/constants/image_constants.dart';
import 'package:netflix_clone_app/view/home_screen/widgets/movies_builder_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          _posterSection(),
          SizedBox(height: 11,),
          _buildPlaySection(),
          SizedBox( height: 40,),
          MoviesBuilderWidget(
            customWidth: 102,
            isCircle: true,
            posterImages: DummyDb.MoviesBuildList1
            ),
          MoviesBuilderWidget(
            haveInfoCard: true,
            posterImages: DummyDb.MoviesBuildList2
            ),
          MoviesBuilderWidget(
            posterImages: DummyDb.MoviesBuildList1
            ),
          MoviesBuilderWidget(
            customHeight: 251,
            customWidth: 154,
            posterImages: DummyDb.MoviesBuildList2
          ),
          MoviesBuilderWidget(
            posterImages: DummyDb.MoviesBuildList1
            ),
            MoviesBuilderWidget(
            posterImages: DummyDb.MoviesBuildList2
            ),
            MoviesBuilderWidget(
            posterImages: DummyDb.MoviesBuildList1
            ),
        ]),
      ),
    );
  }

  Widget _buildPlaySection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(children: [
          Icon(
            Icons.add,
            color: ColorConstants.mainWhite,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "My List",
            style: TextStyle(
              color: ColorConstants.mainWhite,
              fontSize: 14,
            ),
          )
        ]),
        SizedBox(
          width: 42,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 7, horizontal: 15),
          decoration: BoxDecoration(
              color: ColorConstants.mainWhite, borderRadius: BorderRadius.circular(6)),
          child: Row(
            children: [
              Icon(
                Icons.play_arrow,
                size: 40,
                color: ColorConstants.mainBlack,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Play",
                style: TextStyle(
                  color: ColorConstants.mainBlack,
                  fontSize: 14,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: 42,
        ),
        Column(
          children: [
          Icon(
            Icons.info_outline,
            color: ColorConstants.mainWhite,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Info",
            style: TextStyle(
              color: ColorConstants.mainWhite,
              fontSize: 14,
            ),
          )
        ]),
      ],
    );
  }

  Widget _posterSection() {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(ImageConstants.POSTER_JPG))),
          height: 415,
        ),
        Container(
          height: 415,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  colors: [ColorConstants.mainBlack, Colors.transparent])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(ImageConstants.NF_LOGO_PNG),
                    Text(
                      "TV Shows",
                      style: TextStyle(
                          fontSize: 18, color: ColorConstants.mainWhite),
                    ),
                    Text(
                      "Movies",
                      style: TextStyle(
                          fontSize: 18, color: ColorConstants.mainWhite),
                    ),
                    Text(
                      "My List",
                      style: TextStyle(
                          fontSize: 18, color: ColorConstants.mainWhite),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(ImageConstants.TOP10_PNG),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "#2 in India today",
                    style: TextStyle(
                        fontSize: 14,
                        color: ColorConstants.mainWhite,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
