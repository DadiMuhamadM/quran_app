import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:quran_app/page/quran_page.dart';
import 'package:quran_app/utils/quran_theme.dart';

import '../widgets/header.dart';
import '../widgets/gridViewMenu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: QuranTheme.colorBG,
      appBar: _appBar(),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Assalamulaikum",
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: QuranTheme.colorDarkGrey,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              "Dadi Muhamad",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: QuranTheme.colorWhite,
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            const Stack(
              children: [WidgetHeader()],
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              "Menu",
              style: GoogleFonts.poppins(
                color: QuranTheme.colorWhite,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 23,
            ),
            Expanded(
              child: GridView.count(
                padding: const EdgeInsets.all(15),
                primary: false,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                crossAxisCount: 2,
                children: <Widget>[
                  WidgetGridviewMenu(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuranPage(),
                        ),
                      );
                    },
                    image: "assets/images/icon-quran.png",
                    textGridview: "Quran",
                  ),
                  WidgetGridviewMenu(
                    onPressed: () {},
                    image: "assets/images/icon-kisahnabi.png",
                    textGridview: "Kisah Nabi",
                  ),
                  WidgetGridviewMenu(
                    onPressed: () {},
                    image: "assets/images/icon-jadwalsholat.png",
                    textGridview: "Jadwal Sholat",
                  ),
                  WidgetGridviewMenu(
                    onPressed: () {},
                    image: "assets/images/icon-bookmark.png",
                    textGridview: "Bookmark",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: QuranTheme.colorBG,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          SvgPicture.asset("assets/svgs/icon-drawer.svg"),
          const SizedBox(
            width: 130,
          ),
          Text(
            "Quran App",
            style: GoogleFonts.poppins(
              color: QuranTheme.colorWhite,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
