import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test_flutter/model/event.dart';
class EventCard extends StatelessWidget {
  final Event event;

  const EventCard({Key key, this.event}): super (key: key);
  @override
  Widget build(BuildContext context) {
    final dateFormatter = DateFormat('MMM d, y');
    final weekFormatter = DateFormat('EEEE');
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '${weekFormatter.format(event.dateTime)} ${dateFormatter.format(event.dateTime)}',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16),
                  _buildEventDetails(context, event),
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
    return Opacity(
      opacity: event.completed == true ? .4 : 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            timeFormatter.format(event.dateTime),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 14),
          Text(
            event.title,
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          SizedBox(height: 14),
          Text(
            event.location,
            style:
            TextStyle(fontSize: 14, color: Colors.black.withOpacity(0.6)),
          ),
          _buildChange(context, event),
        ],
      ),
    );
  }

  Widget _buildChange(BuildContext context, Event event) {
    if (event.change != true) return Container();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 4),
          height: 1,
          color: Colors.grey[300],
        ),
        SizedBox(height: 6),
        Container(
          child: RaisedButton(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(40.0),
              ),
            ),
            color: Colors.red[800],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Please Confirm Changes',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 10,
                  color: Colors.white,
                ),
              ],
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
