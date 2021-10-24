import 'package:flutter/material.dart';
import 'package:flutterfinancialapp/constants/color_constant.dart';
import 'package:flutterfinancialapp/custom_icons/flutter_custom_icon.dart';
import 'package:flutterfinancialapp/screens/Card/card.dart';
import 'package:flutterfinancialapp/screens/Topup/topup.dart';
import 'package:flutterfinancialapp/screens/Transaction/transaction.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            MyFlutterApp.navigation_drawer,
            color: kBlackColor,
          ),
          padding: EdgeInsets.only(left: 8),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Container(
          height: 56,
          margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: LinearGradient(
                  colors: kGradientSlideButton,
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  tileMode: TileMode.mirror,
                  stops: const <double>[0.0, 1.0])),
          child: ConfirmationSlider(
            onConfirmation: () {},
            height: 56,
            width: MediaQuery.of(context).size.width - 32,
            backgroundColor: Colors.transparent,
            shadow: BoxShadow(
              color: Colors.transparent,
            ),
            foregroundColor: kWhiteColor,
            foregroundShape: BorderRadius.circular(8),
            // icon: MyFlutterApp.slide_icon,
            iconColor: kBlueColor,
            text: 'Slide for payment',
            textStyle: GoogleFonts.numans(
                fontSize: 14, color: kWhiteColor, fontWeight: FontWeight.w700),
          ),
        ),
      ),
      body: Container(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            //Card Account Section
            Padding(
              padding: EdgeInsets.only(left: 24, top: 8, bottom: 16),
              child: Text(
                'hi, Jaya',
                style: GoogleFonts.nunito(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: kBlackColor),
              ),
            ),
            CardAccount(),
            //Last Trasaction Section
            Padding(
              padding:
                  EdgeInsets.only(left: 24, top: 32, bottom: 16, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Last Transaction',
                    style: GoogleFonts.nunito(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: kBlackColor),
                  ),
                  Text(
                    'See all transactions',
                    style: GoogleFonts.nunito(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: kBlueColor),
                  ),
                ],
              ),
            ),
            Transaction(),
            //Topup Section
            Padding(
              padding:
                  EdgeInsets.only(left: 24, top: 32, bottom: 16, right: 24),
              child: Text(
                'Top up Again  ',
                style: GoogleFonts.nunito(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: kBlackColor),
              ),
            ),
            Topup()
          ],
        ),
      ),
    );
  }
}
