import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteViewItem extends StatelessWidget {
  const NoteViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffffcc80),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: const Text(
                  'Flutter tips',
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Build your Career with Tharwat Samy',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.5), fontSize: 22),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.trash, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: Text(
                  'May 21,2022',
                  style: TextStyle(color: Colors.black.withOpacity(0.5)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
