extension DataTimeExt on DateTime {
  String get format {
    return '$hour:$minute $timeZoneName, $day/$month/$year';
  }
}
