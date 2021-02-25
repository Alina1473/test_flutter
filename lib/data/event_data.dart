import 'package:test_flutter/model/event.dart';

class EventData {
  List<Event> activeEvents = [
    Event(
      dateTime: DateTime(2020, 12, 21, 15),
      title: 'Videoclip',
      location: 'Island beach, Hebera',
      change: false,
      completed: false,
    ),
    Event(
      dateTime: DateTime(2020, 12, 21, 15),
      title: 'Videoclip',
      location: 'Haifa zoo, Hatisnbi 124, Haifa',
      change: false,
      completed: false,
    ),
    Event(
      dateTime: DateTime(2020, 12, 21, 15),
      title: 'Videoclip',
      location: 'Haifa zoo, Hatisnbi 124, Haifa',
      change: false,
      completed: false,
    ),
    Event(
      dateTime: DateTime(2020, 12, 23, 15),
      title: 'Videoclip',
      location: 'Haifa zoo, Hatisnbi 124, Haifa',
      change: false,
      completed: false,
    ),
    Event(
      dateTime: DateTime(2020, 12, 25, 15),
      title: 'Videoclip',
      location: 'Haifa zoo, Hatisnbi 124, Haifa',
      change: true,
      completed: false,
    ),
    Event(
      dateTime: DateTime(2020, 12, 25, 15),
      title: 'Videoclip',
      location: 'Haifa zoo, Hatisnbi 124, Haifa',
      change: false,
      completed: false,
    ),
  ];

  final List<Event> completedEvents = [
    Event(
      dateTime: DateTime(2020, 12, 23, 15),
      title: 'Videoclip',
      location: 'Haifa zoo, Hatisnbi 124, Haifa',
      change: false,
      completed: true,
    ),
    Event(
      dateTime: DateTime(2020, 12, 25, 15),
      title: 'Videoclip',
      location: 'Haifa zoo, Hatisnbi 124, Haifa',
      change: false,
      completed: true,
    ),
    Event(
      dateTime: DateTime(2020, 12, 25, 15),
      title: 'Videoclip',
      location: 'Haifa zoo, Hatisnbi 124, Haifa',
      change: false,
      completed: true,
    ),
  ];
}
