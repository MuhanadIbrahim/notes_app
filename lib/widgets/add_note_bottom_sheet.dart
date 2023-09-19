import 'package:flutter/material.dart';

import 'custom_text_field.dart';

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
          CustomTextField(
            hint: 'Title',
          ),
          SizedBox(
            height: 15,
          ),
          CustomTextField(
            hint: 'Content',
            maxLines: 5,
          )
        ],
      ),
    );
  }
}
