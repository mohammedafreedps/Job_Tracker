import 'package:flutter/material.dart';

Widget editTextField({required TextEditingController controller}) {
  return Expanded(child: TextField(controller: controller,));
}
