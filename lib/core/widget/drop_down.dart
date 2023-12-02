import 'package:flutter/material.dart';

class DropDown<T> extends StatefulWidget {
  final ValueChanged<T> onChanged;
  final List<T> items;
  final T? initialItem;

  const DropDown(
      {Key? key,
      required this.onChanged,
      required this.items,
      this.initialItem})
      : super(key: key);

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState<T> extends State<DropDown<T>> {
  T? selectedItem;

  @override
  void initState() {
    if (widget.initialItem != null) {
      selectedItem = widget.initialItem;
    } else {
      selectedItem = widget.items.first;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButtonFormField<T>(
        value: selectedItem,
        onChanged: (T? currentItem) {
          widget.onChanged(currentItem as T);
          setState(() => selectedItem = currentItem);
        },
        items: widget.items
            .map(
              (item) => DropdownMenuItem<T>(
                value: item,
                child: const Text(
                  "",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
