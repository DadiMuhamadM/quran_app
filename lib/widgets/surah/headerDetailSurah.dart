import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/surah.dart';
import '../../utils/quran_theme.dart';

class HeaderDetailSurah extends StatelessWidget {
  const HeaderDetailSurah({
    super.key,
    required this.surah,
  });
  final Surah surah;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Stack(
        children: [
          Container(
            height: 265,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
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
            child: Opacity(
              opacity: 0.1,
              child: SvgPicture.asset(
                "assets/svgs/icon-quran.svg",
                height: 190,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  Text(
                    surah.namaLatin,
                    style: GoogleFonts.poppins(
                      color: QuranTheme.colorWhite,
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    surah.arti,
                    style: GoogleFonts.poppins(
                      color: QuranTheme.colorWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Divider(
                    color: QuranTheme.colorWhite.withOpacity(0.35),
                    thickness: 2,
                    height: 32,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        surah.tempatTurun.name,
                        style: GoogleFonts.poppins(
                          color: QuranTheme.colorWhite,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Container(
                        width: 4,
                        height: 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: QuranTheme.colorWhite,
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        "${surah.jumlahAyat} Ayat",
                        style: GoogleFonts.poppins(
                          color: QuranTheme.colorWhite,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  SvgPicture.asset("assets/svgs/icon-bismillah.svg")
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
