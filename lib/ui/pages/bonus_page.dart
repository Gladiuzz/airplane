import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/custom_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return Container(
        width: 300,
        height: 211,
        padding: EdgeInsets.all(defaultMargin),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img_card.png'),
          ),
          boxShadow: [
            BoxShadow(
              color: kprimaryColor.withOpacity(0.5),
              blurRadius: 50,
              offset: Offset(0, 10),
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Name',
                        style: whiteTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      ),
                      Text(
                        'Joe Roe',
                        style: whiteTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: medium,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/icon_plane.png'),
                  )),
                ),
                Text(
                  'Pay',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 41,
            ),
            Text(
              'Balance',
              style: whiteTextStyle.copyWith(
                fontWeight: light,
              ),
            ),
            Text(
              'IDR 100.000.000',
              style: whiteTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 26,
              ),
            )
          ],
        ),
      );
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 80),
        child: Text(
          'Big Bonus 🎉',
          style: blackTextStyle.copyWith(
            fontSize: 32,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget subtitle() {
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Text(
          'We give you early credit so that\nyou can buy a flight ticket',
          textAlign: TextAlign.center,
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
          ),
        ),
      );
    }

    Widget startButton() {
      return CustomBtn(
        title: 'Start Fly Now',
        width: 220,
        margin: EdgeInsets.only(top: 50),
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/main');
        },
      );
      // return Container(
      //   margin: EdgeInsets.only(top: 50),
      //   width: 220,
      //   height: 55,
      //   child: TextButton(
      //       onPressed: () {
      //         Navigator.pushReplacementNamed(context, '/main');
      //       },
      //       style: TextButton.styleFrom(
      //         backgroundColor: kprimaryColor,
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(defaultRadius),
      //         ),
      //       ),
      //       child: Text(
      //         'Start Fly Now',
      //         style: whiteTextStyle.copyWith(
      //           fontSize: 18,
      //           fontWeight: medium,
      //         ),
      //       )),
      // );
    }

    return Scaffold(
      backgroundColor: kBgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            bonusCard(),
            title(),
            subtitle(),
            startButton(),
          ],
        ),
      ),
    );
  }
}
