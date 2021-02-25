import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter/data/event_data.dart';
import 'package:test_flutter/widget/custom_app_bar.dart';
import 'package:test_flutter/widget/event_card.dart';
import 'package:test_flutter/widget/icon_section.dart';
import 'package:test_flutter/widget/label_schedules.dart';
import 'package:test_flutter/widget/optional_schedules.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    EventData eventData = EventData();
    return Scaffold(
      appBar: CustomAppBar(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Column(
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
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: LabelSchedules(label: 'Optional Schedules'),
          ),
          SliverToBoxAdapter(
            child: OptionalSchedules(),
          ),
          SliverToBoxAdapter(
            child: LabelSchedules(label: 'Active Schedules'),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return EventCard(
                  event: eventData.activeEvents[index],
                );
              },
              childCount: eventData.activeEvents.length,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 18),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 19),
                height: 1,
                color: Colors.grey[300],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: LabelSchedules(label: 'Completed Schedules'),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return EventCard(
                  event: eventData.completedEvents[index],
                );
              },
              childCount: eventData.completedEvents.length,
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
