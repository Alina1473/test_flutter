import 'package:test_flutter/model/event.dart';

class EventData{
  List<Event> activeEvents = [
    Event(
      dateTime: DateTime(2021, 12, 21, 15),
      title: 'Videoclip',
      location: 'Island beach, Hebera',
      change: false,
    ),
    Event(
      dateTime: DateTime(2021, 12, 21, 15),
      title: 'Videoclip',
      location: 'Haifa zoo, Hatisnbi 124, Haifa',
      change: false,
    ),
    Event(
      dateTime: DateTime(2021, 12, 21, 15),
      title: 'Videoclip',
      location: 'Haifa zoo, Hatisnbi 124, Haifa',
      change: false,
    ),
    Event(
      dateTime: DateTime(2021, 12, 23, 15),
      title: 'Videoclip',
      location: 'Haifa zoo, Hatisnbi 124, Haifa',
      change: false,
    ),
    Event(
      dateTime: DateTime(2021, 12, 25, 15),
      title: 'Videoclip',
      location: 'Haifa zoo, Hatisnbi 124, Haifa',
      change: true,
    ),
    Event(
      dateTime: DateTime(2021, 12, 25, 15),
      title: 'Videoclip',
      location: 'Haifa zoo, Hatisnbi 124, Haifa',
      change: false,
    ),
  ];

  // final List<Event> completedEvents = [
  //   Event(
  //     dateTime: DateTime(2021, 12, 23, 15),
  //     title: 'Videoclip',
  //     location: 'Haifa zoo, Hatisnbi 124, Haifa',
  //     change: false,
  //   ),
  //   Event(
  //     dateTime: DateTime(2021, 12, 25, 15),
  //     title: 'Videoclip',
  //     location: 'Haifa zoo, Hatisnbi 124, Haifa',
  //     change: true,
  //   ),
  //   Event(
  //     dateTime: DateTime(2021, 12, 25, 15),
  //     title: 'Videoclip',
  //     location: 'Haifa zoo, Hatisnbi 124, Haifa',
  //     change: false,
  //   ),
  // ];


}