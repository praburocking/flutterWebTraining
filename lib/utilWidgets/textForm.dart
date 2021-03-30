import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextForm extends StatefulWidget {
  final Function validator;
  final String label;
  final Icon icon;
  final Color color;
  final String type;
  TextForm({this.validator, this.label, this.icon, this.color, this.type});

  @override
  _TextFormState createState() => _TextFormState();
  TextEditingController emailController = TextEditingController();
  TextFormField emailField = TextFormField();
}

class _TextFormState extends State<TextForm> {
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    widget.emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(
        fontFamily: 'Montserrat', fontSize: 18.0, color: widget.color);
    widget.emailField = TextFormField(
      obscureText: (widget.type == "password") ? true : false,
      style: style,
      controller: widget.emailController,
      validator: (value) {
        widget.validator(value);
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: widget.label,
        labelStyle: TextStyle(color: widget.color),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: Colors.blue),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: Colors.redAccent),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: Colors.redAccent),
        ),
        prefixIcon: widget.icon,
      ),
    );
    return Container(
      child: widget.emailField,
    );
  }
}
