import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            CustomAppBar(),
          ],
        ),
      ),
    );
  }
}
