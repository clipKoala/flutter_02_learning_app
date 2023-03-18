import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_02_learning_app/domain/Subject.dart';

class DescriptionEntry extends StatefulWidget {
  DescriptionEntry(this.subject_description, {Key? key});

  final Subject subject_description;

  @override
  State<DescriptionEntry> createState() => _DescriptionEntryState();
}

class _DescriptionEntryState extends State<DescriptionEntry> {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(widget.subject_description.name),
      child: Card(
        elevation: 100,
        child: Container(
          margin: const EdgeInsets.fromLTRB(15, 5, 15, 0),
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Row(
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
                child: ClipRRect(// macht die Ränder rund
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                    child: Text(widget.subject_description.timeString),
                    color: Colors.black26,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
