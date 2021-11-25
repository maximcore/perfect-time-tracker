import 'package:flutter/material.dart';

class CustomInputField extends StatefulWidget {
  const CustomInputField(this.text, {Key? key}) : super(key: key);

  final String text;

  @override
  _CustomInputFieldState createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  late final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        width: mq.width / 1.5,
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: const Icon(Icons.account_circle_rounded),
              hintText: widget.text),
          controller: _textEditingController,
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final Function() onPressed;
  final Widget child;

  const CustomButton(this.child, this.onPressed, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return ElevatedButton(
      onPressed: onPressed,
      child: child,
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          primary: Colors.white,
          fixedSize: Size.fromWidth(mq.size.width / 1.5)),
    );
  }
}

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({Key? key}) : super(key: key);

  @override
  _CustomPasswordFieldState createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  late final TextEditingController _passwordEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        width: mq.width / 1.5,
        child: TextField(
          obscureText: true,
          decoration: const InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(Icons.lock),
            hintText: 'Password',
          ),
          controller: _passwordEditingController,
        ),
      ),
    );
  }
}
