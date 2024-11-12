import 'package:flutter/material.dart';
import '../utils/constants.dart' as globalConstants;

class EditText extends StatefulWidget {
  const EditText({super.key, this.hintText = "..."});
  final String hintText;

  @override
  State<EditText> createState() => _EditTextState();
}

class _EditTextState extends State<EditText> {
  // Create a text controller and use it to retrieve the current value  of the TextField.
  final textInputController = TextEditingController();

  setUserName() {
    globalConstants.userName = textInputController.text;
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    textInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textInputController,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        labelText: widget.hintText,
      ),
      onChanged: setUserName(),
    );
  }
}
