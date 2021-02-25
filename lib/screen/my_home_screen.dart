import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test_flutter/data/event_data.dart';
import 'package:test_flutter/model/event.dart';
import 'package:test_flutter/widget/custom_app_bar.dart';
import 'package:test_flutter/widget/event_card.dart';
import 'package:test_flutter/widget/icon_section.dart';
import 'package:test_flutter/widget/label_schedules.dart';

class MyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    EventData eventData = EventData();
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          LabelSchedules(label: 'Optional Schedules'),
          Container(
            height: 120,
            margin: EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 16,
            ),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Trash The Dress Videoclip',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Colors.purple[600],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Please vote any date that fits for you*',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 18,
                            color: Colors.grey[200],
                          )
                        ],
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
          ),
          LabelSchedules(label: 'Active Schedules'),
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: eventData.activeEvents.length,
              itemBuilder: (context, index) {
                return EventCard(
                  event: eventData.activeEvents[index],
                );
                // Event event = eventData.activeEvents[index];
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_rounded),
        onPressed: () {},
      ),
    );
  }
}



