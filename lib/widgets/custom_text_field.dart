import 'package:flutter/material.dart';

import '../constaints.dart';
import 'out_line_input_border.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.maxLines = 1,
    this.onSaved,
  });
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'please Entere your text';
        } else {
          return null;
        }
      },
      cursorColor: kprimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: kprimaryColor),
        border: OutLineInputBorder(),
        focusedBorder: OutLineInputBorder(kprimaryColor),
        enabledBorder: OutLineInputBorder(),
      ),
    );
  }
}
