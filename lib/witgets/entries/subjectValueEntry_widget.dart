import 'package:flutter/material.dart';

class Entry_rowValue_widget extends StatefulWidget {
  const Entry_rowValue_widget({Key? key}) : super(key: key);

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
          child: ClipRRect(
            // macht die Ränder rund
            borderRadius: BorderRadius.circular(50),
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              height: 50,
              child: ClipRRect(
                // macht die Ränder rund
                borderRadius: BorderRadius.circular(50),
                child: Row(children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      height: 50,
                      // child: Text(widget.subject_description.timeString),
                      color: Colors.green,
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      height: 50,
                    ),
                  ),
                ]),
              ),
              color: Colors.blueGrey,
            ),
          ),
        ),
      ],
    );
  }
}
