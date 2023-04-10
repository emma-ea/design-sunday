import 'package:design_sunday/core/utils/date_util.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('date util getFullDate returns a non empty date string', () {
    String date = DateUtil.getFullDate();
    if (kDebugMode) { print(date); }
    expect(date.isNotEmpty, true);
  });

  test('date util formatDay returns a non empty day string', () {
    String day = DateUtil.formatDay(1);
    expect(day.isNotEmpty, true);
  });

  test('date util formatDay returns a string with rd', () {
    String day = DateUtil.formatDay(23);
    expect(day, '23rd');
  });

  test('formatDay with arg -1 throws exception with invalid day range', () {
    expect(() => DateUtil.formatDay(-1), throwsA(isA<FormatException>()));
  });

  test('formatDay with arg 43 throws exception with invalid day range', () {
    expect(() => DateUtil.formatDay(43), throwsFormatException);
  });

  test('date util formatMonth returns a string with February', () {
    String date = DateUtil.formatMonth(2);
    expect(date.toLowerCase(), 'february');
  });

  test('formatMonth with 0 throws exception with invalid month range', () {
    expect(() => DateUtil.formatMonth(0), throwsFormatException);
  });

}