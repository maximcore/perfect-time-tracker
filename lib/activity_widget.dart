import 'package:flutter/material.dart';
import 'package:perfect_timetracker/activity.dart';

class ActivityWidget extends StatefulWidget {
  final Activity activity;

  const ActivityWidget({required this.activity, Key? key}) : super(key: key);

  @override
  _ActivityWidgetState createState() => _ActivityWidgetState();
}

class _ActivityWidgetState extends State<ActivityWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        showDialog(context: context, builder: (context) {
          return Container(
            height: 200,
            width: 200,
            color: Colors.blueAccent,
            child: Text('${widget.activity.name} - ${widget.activity.duration}'),
          );
        });
      },
      child: Container(
        width: size.width / 1.5,
        margin: EdgeInsets.all(10),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
                child: Text(widget.activity.name),
                onPressed: () {
                  print(widget.activity.toJson());
                }),
            Text(
              'Duration: ${widget.activity.duration}',
              style: const TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
