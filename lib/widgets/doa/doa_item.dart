import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran_app/utils/quran_theme.dart';

import '../../models/doa.dart';

class DoaItem extends StatelessWidget {
  const DoaItem({
    super.key,
    required this.doa,
  });
  final Doa doa;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 5,
      margin: const EdgeInsets.all(15),
      color: Colors.white,
      child: ExpansionTile(
        title: Text(
          doa.doa,
          style: GoogleFonts.poppins(
            color: QuranTheme.colorBG,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                        ),
                        Text(
                          doa.arab,
                          style: GoogleFonts.amiri(
                            color: QuranTheme.colorBG,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          doa.latin,
                          style: GoogleFonts.poppins(
                            color: QuranTheme.colorBG,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          doa.id,
                          style: GoogleFonts.poppins(
                            color: QuranTheme.colorBG,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
