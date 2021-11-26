import 'package:flutter/material.dart';
import 'package:perfect_timetracker/activity.dart';

class ActivityEntry extends StatefulWidget {
  final Activity activity;

  const ActivityEntry({required this.activity, Key? key}) : super(key: key);

  @override
  _ActivityEntryState createState() => _ActivityEntryState();
}

class _ActivityEntryState extends State<ActivityEntry> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 1.5,
      margin: EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
              child: Text('${widget.activity.name}'),
              onPressed: () {
                print(widget.activity.toJson());
              }),
          Text(
            'Duration: ${widget.activity.duration}',
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
