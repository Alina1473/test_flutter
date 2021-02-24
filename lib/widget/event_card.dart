import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test_flutter/model/event.dart';

class EventCard extends StatelessWidget {
  final List<Event> activeEvents;

  const EventCard({Key key, this.activeEvents}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dateFormatter = DateFormat('MMM d, y');
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      dateFormatter.format(activeEvents[0].dateTime),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  _buildEventDetails(context, activeEvents[0]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEventDetails(BuildContext context, Event event) {
    final timeFormatter = DateFormat('H:mm');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          timeFormatter.format(event.dateTime),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 16),
        Text(
          event.title,
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        SizedBox(height: 8),
        Text(
          event.location,
          style: TextStyle(
              fontSize: 14,
              color: Colors.black.withOpacity(0.6)
          ),
        ),
      ],
    );
  }
}
