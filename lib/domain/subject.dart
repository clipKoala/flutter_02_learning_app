import 'package:flutter/material.dart';

class Subject {
  final _id = UniqueKey();
  String _name;
  double _time;
  DateTime _date = DateTime.now();

  Subject({required name, time = 0})
      : _time = time,
        _name = name;

  String get timeString => _time.toString();

  get id => _id;

  double get time => _time;

  DateTime get date => _date;

  String get name => _name;
}
