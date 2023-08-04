import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/quran_theme.dart';

class WidgetGridviewMenu extends StatelessWidget {
  const WidgetGridviewMenu({
    super.key,
    required this.onPressed,
    required this.textGridview,
    required this.image,
  });

  final VoidCallback onPressed;
  final String textGridview;
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFDD96FA),
                Color(0xFF9459FF),
              ]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textGridview,
              style: GoogleFonts.poppins(
                color: QuranTheme.colorWhite,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              image,
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
