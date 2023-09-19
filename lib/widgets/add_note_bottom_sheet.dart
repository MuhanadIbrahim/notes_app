import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';

import 'custom_text_field.dart';

class AddNoteBottomsheet extends StatelessWidget {
  const AddNoteBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: SingleChildScrollView(
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
            ),
            SizedBox(
              height: 50,
            ),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}
