import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/quran_theme.dart';

class WidgetTextField extends StatelessWidget {
  const WidgetTextField({
    super.key,
    required this.hintText,
    required this.icon,
  });
  final String hintText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: double.infinity,
      decoration: BoxDecoration(
        color: QuranTheme.colorTextField,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(
            icon,
            color: QuranTheme.colorBG,
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
