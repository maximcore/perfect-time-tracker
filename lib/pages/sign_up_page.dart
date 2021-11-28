import 'package:flutter/material.dart';
import 'package:perfect_timetracker/pages/home_page.dart';
import 'package:perfect_timetracker/pages/sign_in_page.dart';
import 'package:perfect_timetracker/widgets.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  Widget haveAccount() {
    return TextButton(
      child: const Text(
        'Have an account?',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const SignInPage();
        }));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Sign Up',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 100,
          ),
          const CustomInputField('Username'),
          const CustomInputField('Email'),
          const CustomInputField('Password'),
          CustomButton(
              const Text(
                'Sign Up',
                style: TextStyle(color: Colors.black),
              ), () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return const HomePage();
              }),
            );
          }),
          haveAccount(),
        ],
      ),
    ));
  }
}
