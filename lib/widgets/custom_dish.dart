import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/models/dish.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDish extends StatelessWidget {
  final Dish dish;
  const CustomDish({required this.dish, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.black12, offset: Offset(0, 4), blurRadius: 20)
        ],
        color: Colors.white,
      ),
      child: Column(children: [
        Container(
          height: 100,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16), topRight: Radius.circular(16)),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/${dish.image}"))),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                dish.name,
                style: GoogleFonts.inter(
                    color: const Color(0xFF1F2B2E),
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
              Text(dish.store,
                  style: GoogleFonts.inter(
                    color: const Color(0xFF999999),
                    fontSize: 12,
                  )),
              const SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      const Icon(
                        FeatherIcons.clock,
                        size: 12,
                        color: Colors.red,
                      ),
                      Text("${dish.proximity} mins",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF50555C),
                            fontSize: 10,
                          ))
                    ],
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset("assets/icons/star.svg", width: 12),
                      Text("${dish.stars}",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF50555C),
                            fontSize: 10,
                          ))
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              Text("\$${dish.price}",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF1F2B2E),
                    fontSize: 18,
                  ))
            ],
          ),
        )
      ]),
    );
  }
}
