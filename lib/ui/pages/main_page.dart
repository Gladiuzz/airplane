import 'package:airplane/cubit/page_cubit.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/home_page.dart';
import 'package:airplane/ui/pages/settings_page.dart';
import 'package:airplane/ui/pages/transaction_page.dart';
import 'package:airplane/ui/pages/wallet_page.dart';
import 'package:airplane/ui/widgets/custom_btm_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return TransactionPage();
          break;
        case 2:
          return WalletPage();
          break;
        case 3:
          return SettingsPage();
          break;
        default:
          return HomePage();
      }
    }

    Widget customBtmNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          height: 60,
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius + 1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              CustomBtmNavigationItem(
                  imageUrl: 'assets/icon_home.png', index: 0),
              CustomBtmNavigationItem(
                  imageUrl: 'assets/icon_booking.png', index: 1),
              CustomBtmNavigationItem(
                  imageUrl: 'assets/icon_card.png', index: 2),
              CustomBtmNavigationItem(
                  imageUrl: 'assets/icon_setting.png', index: 3),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          body: Stack(
            children: <Widget>[
              buildContent(currentIndex),
              customBtmNavigation(),
            ],
          ),
        );
      },
    );
  }
}
