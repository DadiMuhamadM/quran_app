import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran_app/utils/quran_theme.dart';

import '../../models/ayat.dart';

class AyatItem extends StatelessWidget {
  const AyatItem({
    super.key,
    required this.ayat,
  });
  final Ayat ayat;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(27 / 2),
              color: QuranTheme.colorSemiDarkPurple,
            ),
            child: Row(
              children: [
                Container(
                  height: 27,
                  width: 27,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(27 / 2),
                    color: QuranTheme.colorPurple,
                  ),
                  child: Center(
                    child: Text(
                      "${ayat.nomor}",
                      style: GoogleFonts.poppins(
                        color: QuranTheme.colorWhite,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.share_outlined,
                  color: QuranTheme.colorWhite,
                ),
                const SizedBox(
                  width: 16,
                ),
                const Icon(
                  Icons.play_arrow_outlined,
                  color: QuranTheme.colorWhite,
                ),
                const SizedBox(
                  width: 16,
                ),
                const Icon(
                  Icons.bookmark_outline,
                  color: QuranTheme.colorWhite,
                ),
                const SizedBox(),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            ayat.ar,
            style: GoogleFonts.amiri(
              color: QuranTheme.colorWhite,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            textAlign: TextAlign.right,
          ),
          const SizedBox(
            height: 18,
          ),
          Text(
            ayat.tr,
            style: GoogleFonts.poppins(
              color: QuranTheme.colorWhite,
              fontWeight: FontWeight.normal,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            ayat.idn,
            style: GoogleFonts.poppins(
              color: QuranTheme.colorWhite,
              fontWeight: FontWeight.normal,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
