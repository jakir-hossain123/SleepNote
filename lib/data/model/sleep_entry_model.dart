class SleepEntry {
  final String date;
  final String sleepTime;
  final String wakeTime;
  final double duration;
  final int quality;
  final bool hasAnxiety;
  final String activities;
  final String journalNote;

  SleepEntry({
    required this.date,
    required this.sleepTime,
    required this.wakeTime,
    required this.duration,
    required this.quality,
    required this.hasAnxiety,
    required this.activities,
    required this.journalNote,
  });


  Map<String, dynamic> toMap() {
    return {
      'date': date,
      'sleepTime': sleepTime,
      'wakeTime': wakeTime,
      'duration': duration,
      'quality': quality,
      'hasAnxiety': hasAnxiety ? 1 : 0,
      'activities': activities,
      'journalNote': journalNote,
    };
  }
}