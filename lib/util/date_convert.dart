import 'package:intl/intl.dart';

// 값을 변환해서 반환해주는 메소드 (ex. dateTime -> 한국어로 변환)
String dateToElapsedTime(DateTime date) {
  final now = DateTime.now();
  final duration = now.difference(date);
  final inMinutes = duration.inMinutes;
  final inHours = duration.inHours;

  if (inMinutes < 1) return '방금 전';
  if (inMinutes < 60) return '$inMinutes분 전';
  if (inHours < 24) return '$inHours시간 전';

  return _dateWithTime(date);
}

String _dateWithTime(DateTime date) {
  return DateFormat('MM/dd a hh:mm').format(date);
}

// time ex. 오전 2:05
String dateToTime(DateTime time) {
  final format = DateFormat('a hh:mm', 'ko');
  return format.format(time);
}

// time ex. 2:05 PM
String dateToTimeEng(DateTime time) {
  return DateFormat('hh:mm a').format(time);
}

// Chat에서 사용 1분전 ~ 59분전 -> 1시간전 ~ 23시간전 -> 6월 23일
String dateToElapsedTimeOnChatMain(DateTime date) {
  final now = DateTime.now();
  final duration = now.difference(date);
  final inMinutes = duration.inMinutes;
  final inHours = duration.inHours;

  if (inMinutes < 1) return '방금 전';
  if (inMinutes < 60) return '$inMinutes분 전';
  if (inHours < 24) return '$inHours시간 전';

  return dateToDay(date);
}

// day ex. 6월 23일
String dateToDay(DateTime date) {
  return DateFormat('MM월 dd일').format(date);
}

// 날짜와 시간 ex. 2021-05-05
String dateToYearMonthDay(DateTime date) {
  return DateFormat('yyyy-MM-dd').format(date);
}
