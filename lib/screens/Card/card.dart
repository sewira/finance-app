import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterfinancialapp/models/card_model.dart';
import 'package:google_fonts/google_fonts.dart';

class CardAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 16, right: 8),
        scrollDirection: Axis.horizontal,
        itemCount: cards.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(right: 8),
            height: 175,
            width: 220,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: cards[index].bgColor,
                boxShadow: [
                  BoxShadow(
                      color: Color(0x1000000),
                      blurRadius: 10,
                      spreadRadius: 4,
                      offset: Offset(0.0, 8.0))
                ]),
            child: Stack(
              children: [
                Positioned(
                  left: 16,
                  top: 22,
                  child: Image.asset(cards[index].type),
                  height: 22,
                  width: 33,
                ),
                Positioned(
                    right: 12,
                    top: 12,
                    child: SvgPicture.asset(cards[index].cardBackground)),
                Positioned(
                    top: 14,
                    right: 12,
                    child: Text(
                      cards[index].name,
                      style: GoogleFonts.nunito(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: cards[index].firstColor),
                    )),
                Positioned(
                    top: 63,
                    left: 16,
                    child: Text(
                      'Your Balance',
                      style: GoogleFonts.nunito(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: cards[index].firstColor),
                    )),
                Positioned(
                    top: 81,
                    left: 16,
                    child: Text(
                      'Rp' + cards[index].balance,
                      style: GoogleFonts.nunito(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: cards[index].secondColor),
                    )),
                Positioned(
                    left: 16,
                    bottom: 30,
                    child: Text(
                      'Valid True',
                      style: GoogleFonts.nunito(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: cards[index].secondColor),
                    )),
                Positioned(
                    left: 16,
                    bottom: 12,
                    child: Text(
                      cards[index].valid,
                      style: GoogleFonts.nunito(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: cards[index].secondColor),
                    )),
                Positioned(
                    right: 8,
                    bottom: 8,
                    child: SvgPicture.asset(
                      cards[index].moreIcon,
                      height: 24,
                      width: 24,
                    ))
              ],
            ),
          );
        },
      ),
    );
  }
}
