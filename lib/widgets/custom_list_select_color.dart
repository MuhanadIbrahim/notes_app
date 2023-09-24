import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/add_note_cubit/add_note_cubit.dart';

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
  List colors = [
    const Color(0xffFFC6AC),
    const Color(0xffFFF6DC),
    const Color(0xffC4C1A4),
    const Color(0xff9E9FA5),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                selectedColorItem = index;
                BlocProvider.of<AddNoteCubit>(context).color = colors[index];
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ColorItem(
                  color: colors[index],
                  isSelected: selectedColorItem == index ? true : false,
                ),
              ),
            );
          }),
    );
  }
}
