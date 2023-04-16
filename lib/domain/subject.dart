import 'package:flutter/material.dart';

class Subject {
  int _id;
  String _name;
  double _time;
  DateTime _date = DateTime.now();
  Color _color;

  Subject({required name, time = 0, color = const Color(0xff48A34C)})
      : _color = color,
        _time = time,
        _name = name;

  String get timeString => _time.toString();

  double get time => _time;

  Color get color => _color;

  DateTime get date => _date;

  String get name => _name;
}
