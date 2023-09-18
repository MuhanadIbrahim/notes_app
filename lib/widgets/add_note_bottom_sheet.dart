import 'package:flutter/material.dart';
import 'package:notes_app/constaints.dart';

import 'out_line_input_border.dart';

class AddNoteBottomsheet extends StatelessWidget {
  const AddNoteBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          SizedBox(
            height: 18,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Title',
              hintStyle: TextStyle(color: KprimaryColor),
              border: OutLineInputBorder(),
              focusedBorder: OutLineInputBorder(),
              enabledBorder: OutLineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
