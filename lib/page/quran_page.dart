import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:quran_app/widgets/surah/headerSurah.dart';
import 'package:quran_app/widgets/tab_surah/doaTab.dart';
import 'package:quran_app/widgets/tab_surah/surahTab.dart';

import '../utils/quran_theme.dart';

class QuranPage extends StatefulWidget {
  const QuranPage({super.key});

  @override
  State<QuranPage> createState() => _QuranPageState();
}

class _QuranPageState extends State<QuranPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: QuranTheme.colorBG,
      appBar: _appBar(),
      body: DefaultTabController(
        length: 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    HeaderSurah(),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Kategori",
                      style: GoogleFonts.poppins(
                        color: QuranTheme.colorWhite,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SliverAppBar(
                pinned: true,
                elevation: 0,
                backgroundColor: QuranTheme.colorBG,
                automaticallyImplyLeading: false,
                shape: Border(
                  bottom: BorderSide(
                    color: Color(0xFFAAAAAA).withOpacity(0.1),
                  ),
                ),
                bottom: PreferredSize(
                  child: TabBar(indicatorColor: QuranTheme.colorWhite, tabs: [
                    Tab(
                      child: Text(
                        "Surah",
                        style: GoogleFonts.poppins(
                          color: QuranTheme.colorWhite,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Doa",
                        style: GoogleFonts.poppins(
                          color: QuranTheme.colorWhite,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ]),
                  preferredSize: Size.fromHeight(0),
                ),
              ),
            ],
            body: const TabBarView(
              children: [SurahTab(), DoaTab()],
            ),
          ),
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: QuranTheme.colorBG,
      // automaticallyImplyLeading: true,
      foregroundColor: QuranTheme.colorWhite,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Quran App",
            style: GoogleFonts.poppins(
              color: QuranTheme.colorWhite,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          // const Spacer(),

          // SvgPicture.asset("assets/svgs/icon-search.svg", color: Colors.amber),
        ],
      ),
    );
  }
}
