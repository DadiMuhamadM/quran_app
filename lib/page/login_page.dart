import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran_app/utils/quran_theme.dart';

import '../widgets/textField.dart';
import 'home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: QuranTheme.colorBG,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Stack(
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    child: Stack(
                      children: [
                        Image(
                          image: AssetImage(
                            "assets/images/mosque.png",
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Quran App",
                        style: GoogleFonts.poppins(
                          color: QuranTheme.colorWhite,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Assalamualaikum",
                        style: GoogleFonts.poppins(
                          color: QuranTheme.colorWhite,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sign In",
                            style: GoogleFonts.poppins(
                              color: QuranTheme.colorWhite,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const WidgetTextField(
                        hintText: "Masukan Email",
                        icon: Icons.email,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const WidgetTextField(
                        hintText: "Masukan kata sandi",
                        icon: Icons.key,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      ElevatedButton(
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              QuranTheme.colorSemiDarkPurple),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ),
                          );
                        },
                        child: const Text("Sign In"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
