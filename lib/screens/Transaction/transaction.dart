import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterfinancialapp/constants/color_constant.dart';

import 'package:flutterfinancialapp/models/transaction_model.dart';
import 'package:google_fonts/google_fonts.dart';

class Transaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      child: ListView.builder(
          padding: EdgeInsets.only(left: 16, right: 8),
          scrollDirection: Axis.horizontal,
          itemCount: transactions.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(right: 8),
              height: 160,
              width: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: kWhiteColor,
                  boxShadow: [
                    BoxShadow(
                        color: Color(0x0400000),
                        blurRadius: 10,
                        spreadRadius: 10,
                        offset: Offset(0.0, 8.0))
                  ]),
              child: Stack(
                children: [
                  Positioned(
                    top: 16,
                    left: 16,
                    child: SvgPicture.asset(transactions[index].type),
                    height: 24,
                    width: 24,
                  ),
                  Positioned(
                      right: 8,
                      top: 8,
                      child: SvgPicture.asset('assets/svg/mastercard_bg.svg')),
                  Positioned(
                      right: 16,
                      child: Text(transactions[index].name,
                          style: GoogleFonts.nunito(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: transactions[index].colorType))),
                  Positioned(
                      top: 64,
                      left: 16,
                      child: Text(
                        transactions[index].signType +
                            'Rp ' +
                            transactions[index].amount,
                        style: GoogleFonts.nunito(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: transactions[index].colorType),
                      )),
                  Positioned(
                      left: 16,
                      top: 106,
                      child: Text(
                        transactions[index].information,
                        style: GoogleFonts.nunito(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: kGreyColor),
                      )),
                  Positioned(
                      left: 16,
                      bottom: 48,
                      child: Text(
                        transactions[index].recipient,
                        style: GoogleFonts.nunito(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: kBlackColor),
                      )),
                  Positioned(
                      left: 16,
                      bottom: 22,
                      child: Text(
                        transactions[index].date,
                        style: GoogleFonts.nunito(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: kGreyColor),
                      )),
                  Positioned(
                      right: 14,
                      bottom: 16,
                      child: Image.asset(
                        transactions[index].card,
                        height: 22,
                        width: 33,
                      ))
                ],
              ),
            );
          }),
    );
  }
}
