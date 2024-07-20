import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column( 
        children: [
          TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 20),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              suffixIcon: Icon(
                Icons.mic,
                 color: Colors.grey,
              ),
              hintText: "Search for a show, movie, genre, etc",
              hintStyle: TextStyle(
                 color: Colors.grey,
              ),border: InputBorder.none,
              filled: true, 
              fillColor: Colors.grey.shade800,
            ),
          )
        ]
      ,)
    );
  }
}