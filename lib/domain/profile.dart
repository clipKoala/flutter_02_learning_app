import 'package:flutter/material.dart';

class Profile {
  final _id = UniqueKey();
  String _name;
  Color _color;

  Profile({required name, color = const Color(0xff48A34C)})
      : _color = color,
        _name = name;

  Color get color => _color;
  set color(Color value) => _color = value;

  String get name => _name;
  set name(String value) => _name = value;

  UniqueKey get id => _id;
}
