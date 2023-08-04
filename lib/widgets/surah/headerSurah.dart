import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/quran_theme.dart';

class HeaderSurah extends StatelessWidget {
  const HeaderSurah({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 170,
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
          child: SvgPicture.asset("assets/svgs/icon-quran.svg"),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SvgPicture.asset("assets/svgs/icon-read.svg"),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    "Last Read",
                    style: GoogleFonts.poppins(
                      color: QuranTheme.colorWhite,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              Text(
                "Al-Fatihah",
                style: GoogleFonts.poppins(
                  color: QuranTheme.colorWhite,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Ayat No:1",
                style: GoogleFonts.poppins(
                  color: QuranTheme.colorWhite.withOpacity(0.8),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                // padding: const EdgeInsets.all(11),
                width: 115,
                height: 31,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: QuranTheme.colorWhite,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Continue",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SvgPicture.asset("assets/svgs/icon-arrow.svg")
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
