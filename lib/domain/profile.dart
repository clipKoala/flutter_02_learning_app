import 'package:flutter/material.dart';

class Profile {
  String _name;

  Profile({required name})
      : _name = name;

  String get name => _name;
  set name(String value) => _name = value;
}
