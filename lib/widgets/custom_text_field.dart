import 'package:flutter/material.dart';

import '../constaints.dart';
import 'out_line_input_border.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.maxLines = 1,
  });
  final String hint;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
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
