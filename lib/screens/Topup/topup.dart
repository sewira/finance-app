import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterfinancialapp/constants/color_constant.dart';
import 'package:flutterfinancialapp/models/card_model.dart';
import 'package:flutterfinancialapp/models/wallet_model.dart';
import 'package:google_fonts/google_fonts.dart';

class Topup extends StatelessWidget {
  const Topup({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 304,
      child: ListView.builder(
          padding: EdgeInsets.only(left: 16, right: 16),
          itemCount: wallets.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(bottom: 8),
              height: 68,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0x04000000),
                        blurRadius: 10,
                        spreadRadius: 10,
                        offset: Offset(0.0, 8.0))
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: kWhiteGreyColor,
                            image: DecorationImage(
                                image: AssetImage(wallets[index].walletLogo))),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            wallets[index].name,
                            style: GoogleFonts.nunito(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: kBlackColor),
                          ),
                          Text(
                            wallets[index].wallet,
                            style: GoogleFonts.nunito(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: kGreyColor),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        wallets[index].walletNumber,
                        style: GoogleFonts.nunito(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: kGreyColor,
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      )
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}
