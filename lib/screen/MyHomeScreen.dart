import 'package:flutter/material.dart';
import 'package:test_flutter/widget/CustomAppBar.dart';
import 'package:test_flutter/widget/IconSection.dart';

class MyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: Center(
              child: ListView(
                scrollDirection: Axis.horizontal,
                  children: [
                    IconSection("assets/img/Iconly-Bulk-Document.png","Contract",2),
                    IconSection("assets/img/Iconly-Bulk-Image.png","Photos",0),
                    IconSection("assets/img/Iconly-Bulk-Video.png","Movies",12),
                    IconSection("assets/img/Iconly-Bulk-Location.png","Location",0),
                    IconSection("assets/img/Iconly-Bulk-Participant.png","Participant",0),
                  ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_rounded),
        onPressed: () {},
      ),
    );
  }


}