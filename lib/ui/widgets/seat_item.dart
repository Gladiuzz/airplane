import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class SeatItem extends StatelessWidget {
  // Note : [0. Available| 1. Selected| 2. Unavailable]
  final int status;
  const SeatItem({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (status) {
        case 0:
          return kAvailableColor;
          break;
        case 1:
          return kprimaryColor;
          break;

        case 2:
          return kUnavailableColor;

        default:
          return kUnavailableColor;
      }
    }

    borderColor() {
      switch (status) {
        case 0:
          return kprimaryColor;
          break;
        case 1:
          return kprimaryColor;
          break;

        case 2:
          return kUnavailableColor;

        default:
          return kUnavailableColor;
      }
    }

    Widget child() {
      switch (status) {
        case 0:
          return SizedBox();
          break;
        case 1:
          return Center(
            child: Text(
              'YOU',
              style: whiteTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
          );
          break;

        case 2:
          return SizedBox();

        default:
          return SizedBox();
      }
    }

    return Container(
      margin: EdgeInsets.only(
        top: 16,
      ),
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: backgroundColor(),
        border: Border.all(color: borderColor(), width: 2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: child(),
    );
  }
}
