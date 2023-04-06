import 'package:flutter/material.dart';

extension StringExtension on String {

  String get toCapital {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}

extension GeneralExtension<T> on T {
  bool get isEnum {
    final List<String> split = toString().split('.');
    return split.length > 1 && split[0] == runtimeType.toString();
  }

  String get getEnumString {
    return toString().split('.').last.toCapital;
  }
}

extension IterableExtension<T> on Iterable<T> {
  Iterable<E> mapWithIndex<E>(E Function(int index, T value) f) {
    return Iterable.generate(length).map((i) => f(i, elementAt(i)));
  }
}

extension MapExtension on Map{
  String get format {
    if (isEmpty) {
      return '';
    } else {
      var firstKey = entries.first.key;
      var mapValues = entries.first.value;
      return "?$firstKey=$mapValues";
    }
  }
}

//helper function
void pop(BuildContext context, int returnedLevel) {
  for(int i = 0; i < returnedLevel; ++i){
    Navigator.pop(context, true);
  }
}