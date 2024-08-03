import 'package:flutter/material.dart';
import 'package:netflix_clone_app/utils/constants/color_constants.dart';

class DownloadsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      
      body: Padding(
        padding: const EdgeInsets.all(16),
        
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              Text(
                'Smart Downloads',
                style: TextStyle(
                  color: ColorConstants.mainWhite,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Introducing Downloads For You',
                style: TextStyle(
                  color: ColorConstants.mainWhite,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa, id ut ipsum aliquam enim non posuere pulvinar diam.',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.grey,
                 
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  color: Colors.blue,
                 
                ),
                child: Center(
                  child: Text(
                    'SETUP',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Center(
                child: Container(
                 
                  
                  width: 250,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    
                  ),
                  child: Center(
                    child: Text(
                      'Find Something to Download',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
