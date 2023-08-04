import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran_app/widgets/surah/ayatItem.dart';
import 'package:quran_app/widgets/surah/headerDetailSurah.dart';

import '../../models/surah.dart';
import '../../utils/quran_theme.dart';

class DetailSurah extends StatelessWidget {
  final int noSurat;
  const DetailSurah({super.key, required this.noSurat});

  Future<Surah> _getDetailSurah() async {
    var data = await Dio().get("https://equran.id/api/surat/$noSurat");
    return Surah.fromJson(json.decode(data.toString()));
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Surah>(
        future: _getDetailSurah(),
        initialData: null,
        builder: ((context, snapshot) {
          if (!snapshot.hasData) {
            return Scaffold(
              backgroundColor: QuranTheme.colorBG,
            );
          }
          Surah surah = snapshot.data!;
          return Scaffold(
            backgroundColor: QuranTheme.colorBG,
            appBar: _appBar(surah: surah),
            body: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                SliverToBoxAdapter(
                  child: HeaderDetailSurah(surah: surah),
                )
              ],
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ListView.separated(
                  itemBuilder: (context, index) => AyatItem(
                    ayat: surah.ayat!.elementAt(
                      index + (noSurat == 1 ? 1 : 0),
                    ),
                  ),
                  separatorBuilder: (context, index) => Container(),
                  itemCount: surah.jumlahAyat + (noSurat == 1 ? -1 : 0),
                ),
              ),
            ),
          );
        }));
  }

  AppBar _appBar({required Surah surah}) {
    return AppBar(
      backgroundColor: QuranTheme.colorBG,
      // automaticallyImplyLeading: true,
      foregroundColor: QuranTheme.colorWhite,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            surah.namaLatin,
            style: GoogleFonts.poppins(
              color: QuranTheme.colorWhite,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          SvgPicture.asset("assets/svgs/icon-search.svg", color: Colors.white),
        ],
      ),
    );
  }
}
