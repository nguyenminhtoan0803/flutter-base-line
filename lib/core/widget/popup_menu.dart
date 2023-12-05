import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopupMenu<T> extends StatelessWidget {
  const PopupMenu(
      {super.key,
      required this.items,
      required this.onChanged,
      this.icon = Icons.more_vert});

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
class WidgetCustom {
  /// method show snack-bar
  /// type
  /// message
  static void snackBar(String type, String message) async {
    Get.snackbar(
      type,
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: type == 'error' ? Colors.red : Colors.green,
      colorText: Colors.white,
      icon: const Icon(
        Icons.error,
        color: Colors.white,
      ),
    );
  }

  /// method show toast
  /// type
  /// message
  static void showSuccessToast(String title, String message) async {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
      colorText: Colors.white,
      icon: const Icon(
        Icons.check_circle,
        color: Colors.white,
      ),
    );
  }
}
