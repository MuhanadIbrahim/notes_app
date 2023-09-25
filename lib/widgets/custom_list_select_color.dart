import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constaints.dart';
import 'package:notes_app/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, this.isSelected, required this.color});
  final isSelected;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? CircleAvatar(
            radius: 38,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 34,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 38,
            backgroundColor: color,
          );
  }
}

class ListColorItem extends StatefulWidget {
  const ListColorItem({super.key});

  @override
  State<ListColorItem> createState() => _ListColorItemState();
}

class _ListColorItemState extends State<ListColorItem> {
  int selectedColorItem = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kcolorList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                selectedColorItem = index;
                BlocProvider.of<AddNoteCubit>(context).color =
                    kcolorList[index];
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ColorItem(
                  color: kcolorList[index],
                  isSelected: selectedColorItem == index ? true : false,
                ),
              ),
            );
          }),
    );
  }
}

class EditeColorList extends StatefulWidget {
  const EditeColorList({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditeColorList> createState() => _EditeColorListState();
}

class _EditeColorListState extends State<EditeColorList> {
  late int selectedColorItem;

  @override
  void initState() {
    selectedColorItem = kcolorList.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kcolorList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                selectedColorItem = index;
                widget.note.color = kcolorList[index].value;

                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ColorItem(
                  color: kcolorList[index],
                  isSelected: selectedColorItem == index ? true : false,
                ),
              ),
            );
          }),
    );
  }
}
