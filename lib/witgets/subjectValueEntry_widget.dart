import 'package:flutter/material.dart';
import 'package:flutter_02_learning_app/witgets/proportion/subjectsProportionsBar_widget.dart';

import '../../domain/subject.dart';

class Entry_rowValue_widget extends StatefulWidget {
  Entry_rowValue_widget(this.subject_description, {Key? key});

  final Subject subject_description;
  @override
  State<Entry_rowValue_widget> createState() => _Entry_rowValue_widgetState();
}

class _Entry_rowValue_widgetState extends State<Entry_rowValue_widget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 1,
          child: CircleAvatar(
            backgroundColor: Colors.green,
            radius: 15,
            child: Icon(
              Icons.dangerous,
              color: Colors.white,
            ),
          ),
        ),
        Flexible(
          flex: 3,
          child: Container(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Text(widget.subject_description.name),
          ),
        ),
        Flexible(
          flex: 12,
          child: ProportionBar_widget(widget.subject_description),
        ),
      ],
    );
  }
}
