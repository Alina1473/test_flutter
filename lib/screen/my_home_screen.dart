import 'package:flutter/material.dart';
import 'package:test_flutter/data/event_data.dart';
import 'package:test_flutter/widget/custom_app_bar.dart';
import 'package:test_flutter/widget/event_card.dart';
import 'package:test_flutter/widget/icon_section.dart';

class MyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    EventData eventData = EventData();
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
                  IconSection(
                    pathToIcon: "assets/img/Iconly-Bulk-Document.png",
                    label: "Contract",
                    notification: 2,
                  ),
                  IconSection(
                    pathToIcon: "assets/img/Iconly-Bulk-Image.png",
                    label: "Photos",
                    notification: 0,
                  ),
                  IconSection(
                    pathToIcon: "assets/img/Iconly-Bulk-Video.png",
                    label: "Movies",
                    notification: 12,
                  ),
                  IconSection(
                    pathToIcon: "assets/img/Iconly-Bulk-Location.png",
                    label: "Location",
                    notification: 0,
                  ),
                  IconSection(
                    pathToIcon: "assets/img/Iconly-Bulk-Participant.png",
                    label: "Participant",
                    notification: 0,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: eventData.activeEvents.length,
                itemBuilder: (context, index){
                 return EventCard(
                   activeEvents: [index],
                 );
                },
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
