import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/quran_theme.dart';

class WidgetHeader extends StatelessWidget {
  const WidgetHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(colors: [
              Color(0xFFDF98FA),
              Color(0xFF9055FF),
            ]),
            // color: QuranTheme.colorPurple,
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: Image.asset("assets/images/berdoa.png"),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            right: 20,
            left: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "My Quran",
                style: GoogleFonts.poppins(
                  color: QuranTheme.colorWhite,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                "Baca Al-quran dengan\nmudah",
                style: GoogleFonts.poppins(
                  color: QuranTheme.colorWhite.withOpacity(0.8),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                "19:21",
                style: GoogleFonts.poppins(
                  color: QuranTheme.colorWhite,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                "Ramadan 23, 1444 AH",
                style: GoogleFonts.poppins(
                  color: QuranTheme.colorWhite,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Container(
                // padding: const EdgeInsets.all(11),
                width: 115,
                height: 31,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: QuranTheme.colorWhite,
                ),
                child: Center(
                  child: Text(
                    "Shubuh 4:17 AM",
                    style: GoogleFonts.poppins(
                      color: QuranTheme.colorBG,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
