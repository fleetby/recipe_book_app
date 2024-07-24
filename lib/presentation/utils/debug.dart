import 'package:flutter/material.dart';

void debugPrintError(Object e, StackTrace st) {
  debugPrintStack(label: e.toString(), stackTrace: st);
}
