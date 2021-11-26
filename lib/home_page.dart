import 'package:flutter/material.dart';
import 'package:perfect_timetracker/activity.dart';
import 'package:perfect_timetracker/activity_entry.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Activity> activities = [
    Activity(name: 'Sport', duration: 0),
    Activity(name: 'Work', duration: 500),
    Activity(name: 'Study', duration: 24),
    Activity(name: 'Walking', duration: 1337),
    Activity(name: 'Music Production', duration: 123),
    Activity(name: 'Swim', duration: 42),
    Activity(name: 'Dance', duration: 42),
    Activity(name: 'Wash', duration: 42),
    Activity(name: 'Jump', duration: 42),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: ReorderableListView.builder(
                  shrinkWrap: true,
                    header: Center(
                        child: Text(
                      'Your Activities',
                      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    )),
                    onReorder: (int oldIndex, int newIndex) {
                      if (oldIndex < newIndex) {
                        newIndex -= 1;
                      }
                      final activity = activities.removeAt(newIndex);
                      activities.insert(newIndex, activity);
                      setState(() {

                      });
                    },
                    itemCount: activities.length,
                    itemBuilder: (context, index) {
                      return ActivityEntry(
                        key: Key(activities[index].name),
                        activity: activities[index],
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
