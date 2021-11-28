import 'package:flutter/material.dart';
import 'package:perfect_timetracker/pages/sign_in_page.dart';
import 'package:perfect_timetracker/pages/sign_up_page.dart';
import 'package:perfect_timetracker/widgets.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                'https://transcode-v2.app.engoo.com/image/fetch/f_auto,c_lfill,w_300,dpr_3/https://assets.app.engoo.com/images/CGPkj72Wn3gPmu9ebqmpS1nGQNOZQlR70NilqMAWUBm.png',
                height: 200,
                width: 200,
              ),
              const SizedBox(
                height: 200,
              ),
              CustomButton(const Text('Sign In', style: TextStyle(color: Colors.black),), () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SignInPage();
                }));
              }),
              CustomButton(const Text('Sign Up', style: TextStyle(color: Colors.black),), () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SignUpPage();
                }));
              }),
            ],
          ),
        ),
      ),
    );
  }
}
