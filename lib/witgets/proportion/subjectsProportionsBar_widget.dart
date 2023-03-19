import 'package:flutter/material.dart';
import 'package:flutter_02_learning_app/witgets/proportion/bar_widget.dart';

import '../../domain/subject.dart';

class ProportionBar_widget extends StatefulWidget {
  const ProportionBar_widget(this.subject_description, {Key? key});

  final Subject subject_description;

  @override
  State<ProportionBar_widget> createState() => _ProportionBar_widgetState();
}

class _ProportionBar_widgetState extends State<ProportionBar_widget> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      // macht die Ränder rund
      borderRadius: BorderRadius.circular(50),
      child: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        height: 50,
        child: ClipRRect(
          // macht die Ränder rund
          borderRadius: BorderRadius.circular(50),
          child: Bar_widget(widget.subject_description),
        ),
        color: Colors.blueGrey,
      ),
    );
  }
}
