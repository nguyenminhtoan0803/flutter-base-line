import 'dart:async';
import 'package:flutter/material.dart';
import 'base_events.dart';

abstract class BaseBloc {
  StreamController<BaseEvent> _eventStreamController = StreamController<BaseEvent>();

  Sink<BaseEvent> get event => _eventStreamController.sink;
  BaseBloc() {
    _eventStreamController.stream.listen((event) {
      if (event is! BaseEvent) {
        throw Exception("event khong hop le ");
      }

      dispatchEvent(event);
    });
  }

  void dispatchEvent(BaseEvent event);

  @mustCallSuper
  void dispose() {
    _eventStreamController.close();
  }
}