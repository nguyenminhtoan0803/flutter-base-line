import 'package:flutter/material.dart';

class PopupMenu<T> extends StatelessWidget {
  const PopupMenu(
      {Key? key,
        required this.items,
        required this.onChanged,
        this.icon = Icons.more_vert})
      : super(key: key);

  final List<T> items;
  final ValueChanged<T> onChanged;
  final IconData? icon;


  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<T>(
      icon: Icon(icon),
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(color: Colors.grey),
      ),
      onSelected: (T item) {
        onChanged(item);
      },
      itemBuilder: (BuildContext context) {
        return items
            .map(
              (T item) => PopupMenuItem<T>(
            value: item,
            child: const InkWell(
              child: Text(""),
            ),
          ),
        )
            .toList();
      },
    );
  }
}