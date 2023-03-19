import 'package:flutter/material.dart';
import 'package:flutter_02_learning_app/service/timeProportion.dart';

import '../../domain/subject.dart';

class Bar_widget extends StatefulWidget {
  const Bar_widget(this.subject_description, {Key? key}) : super(key: key);

  final Subject subject_description;

  @override
  State<Bar_widget> createState() => _Bar_widgetState();
}

class _Bar_widgetState extends State<Bar_widget> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Flexible(
        flex: new TimeProportion().proportion(widget.subject_description.time),
        child: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          height: 50,
          child: Text(widget.subject_description.timeString),
          color: Colors.green,
        ),
      ),
      Flexible(
        flex: 200,
        child: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          height: 50,),
      ),
    ]);
  }
}
