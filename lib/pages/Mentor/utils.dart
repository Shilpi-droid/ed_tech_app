  import 'dart:collection';

import 'package:table_calendar/table_calendar.dart';

/// Example event class.
class Event {
  final String title;
  final String subtitle;
  final String time;

  const Event(this.title,this.subtitle,this.time);

  @override
  String toString() => title;
}

/// Example events.
///
/// Using a [LinkedHashMap] is highly recommended if you decide to use a map.
// final kEvents = LinkedHashMap<DateTime, List<Event>>(
//   equals: isSameDay,
//   hashCode: getHashCode,
// )..addAll(_kEventSource);

final kEvents = LinkedHashMap<DateTime, List<Event>>(
  equals: isSameDay,
  hashCode: getHashCode,
)..addAll({
  DateTime(2023, 6, 1): [
    Event('Product Management','Marketing','8:30 - 9:30'),
    Event('Product Management','Marketing','8:30 - 9:30'),
  ],
  DateTime(2023, 6, 10): [
    Event('Product Management','Marketing','8:30 - 9:30'),
  ],

  DateTime(2023, 6, 15): [
    Event('Product Management','Marketing','8:30 - 9:30'),
    Event('Product Management','Marketing','8:30 - 9:30'),
  ],
  DateTime(2023, 6, 20): [
    Event('Product Management','Marketing','8:30 - 9:30'),
  ],
  // Add more custom events for different dates
});


final _kEventSource = Map.fromIterable(
  List.generate(50, (index) => index),
  key: (item) => DateTime.utc(kFirstDay.year, kFirstDay.month, item * 5),
  value: (item) {
    // Add custom events for specific dates
    if (item == 7) {
      return [
        Event('Product Management','Marketing','8:30 - 9:30'),
        Event('Product Management','Marketing','8:30 - 9:30'),
      ];
    } else if (item == 15) {
      return [
        Event('Product Management','Marketing','8:30 - 9:30'),
      ];
    } else {
      return List.generate(
          item % 4 + 1, (index) => Event('Event $item | ${index + 1}','Marketing','8:30 - 9:30'));
    }
  },
)..addAll({
  kToday: [
    Event('Product Management','Marketing','8:30 - 9:30'),
    Event('Product Management','Marketing','8:30 - 9:30'),
  ],
});


// final _kEventSource = Map.fromIterable(List.generate(50, (index) => index),
//     key: (item) => DateTime.utc(kFirstDay.year, kFirstDay.month, item * 5),
//     value: (item) => List.generate(
//         item % 4 + 1, (index) => Event('Event $item | ${index + 1}')))
//   ..addAll({
//     kToday: [
//       Event('Today\'s Event 1'),
//       Event('Today\'s Event 2'),
//     ],
//   });

int getHashCode(DateTime key) {
  return key.day * 1000000 + key.month * 10000 + key.year;
}

/// Returns a list of [DateTime] objects from [first] to [last], inclusive.
List<DateTime> daysInRange(DateTime first, DateTime last) {
  final dayCount = last.difference(first).inDays + 1;
  return List.generate(
    dayCount,
        (index) => DateTime.utc(first.year, first.month, first.day + index),
  );
}

final kToday = DateTime.now();
final kFirstDay = DateTime(kToday.year, kToday.month - 3, kToday.day);
final kLastDay = DateTime(kToday.year, kToday.month + 3, kToday.day);