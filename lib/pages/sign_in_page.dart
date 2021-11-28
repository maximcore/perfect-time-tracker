import 'package:flutter/material.dart';
import 'package:perfect_timetracker/pages/home_page.dart';
import 'package:perfect_timetracker/pages/sign_up_page.dart';
import 'package:perfect_timetracker/widgets.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  Widget rememberMe() {
    return Row(
      children: [
        Checkbox(
          value: true,
          onChanged: (bool? change) {},
          activeColor: Colors.white,
          checkColor: Colors.greenAccent,
        ),
        const Text('Remember me')
      ],
    );
  }

  Widget forgotPassword() {
    return TextButton(
      child: const Text(
        'Forgot password?',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {},
    );
  }

  Widget noAccount() {
    return TextButton(
      child: const Text(
        'Don\'t have an account? Sign up!',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const SignUpPage();
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
              'Sign In',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 100,
            ),
            const CustomInputField('Username or email'),
            const CustomPasswordField(),
            Row(
              children: [
                const SizedBox(
                  width: 55,
                ),
                rememberMe(),
                const SizedBox(
                  width: 25,
                ),
                forgotPassword(),
              ],
            ),
            CustomButton(
                const Text(
                  'Login',
                  style: TextStyle(color: Colors.black),
                ), () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const HomePage();
                }),
              );
            }),
            noAccount(),
          ],
        ),
      ),
    );
  }
}
