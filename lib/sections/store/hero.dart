
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomHero extends StatelessWidget {
  const CustomHero({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
            height: MediaQuery.of(context).size.height * 0.45,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/hero.png"))),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 44, right: 16, left: 16, bottom: 24),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.arrow_back_ios, color: Colors.white),
                        Row(
                          children: [
                            Icon(
                              FeatherIcons.search,
                              color: Colors.white,
                            ),
                            SizedBox(width: 16),
                            Icon(
                              FeatherIcons.heart,
                              color: Colors.white,
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "La Vida Cousines",
                              style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700),
                            ),
                            Row(
                              children: [
                                Text(
                                  " Home Cook ",
                                  style: GoogleFonts.inter(
                                      fontSize: 12, color: Colors.white),
                                ),
                                const CircleAvatar(
                                  radius: 2,
                                  backgroundColor: Colors.white,
                                ),
                                Text(
                                  " Fast food ",
                                  style: GoogleFonts.inter(
                                      fontSize: 12, color: Colors.white),
                                ),
                                const CircleAvatar(
                                  radius: 2,
                                  backgroundColor: Colors.white,
                                ),
                                Text(
                                  " Chinese ",
                                  style: GoogleFonts.inter(
                                      fontSize: 12, color: Colors.white),
                                ),
                                const CircleAvatar(
                                  radius: 2,
                                  backgroundColor: Colors.white,
                                ),
                                Text(
                                  " Italian ",
                                  style: GoogleFonts.inter(
                                      fontSize: 12, color: Colors.white),
                                ),
                                const CircleAvatar(
                                  radius: 2,
                                  backgroundColor: Colors.white,
                                ),
                                Text(
                                  " Wines ",
                                  style: GoogleFonts.inter(
                                      fontSize: 12, color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16)),
                          child: Row(children: [
                            SvgPicture.asset("assets/icons/star.svg",
                                width: 16, height: 16),
                            const SizedBox(width: 2),
                            const Text("4.6")
                          ]),
                        )
                      ],
                    )
                  ]),
            ),
          );
  }
}