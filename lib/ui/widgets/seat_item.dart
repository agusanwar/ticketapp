import 'package:flutter/material.dart';
import 'package:ticketapp/shared/themes.dart';

class SeatItem extends StatelessWidget {
  // STATUS 0 = available, 1 = selected 2 = unavailable

  final int status;

  const SeatItem({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (status) {
        case 0:
          return kPrimaryColor;
        case 1:
          return kWhiteColor;
        case 2:
          return kUnavailableColor;
        default:
          return kUnavailableColor;
      }
    }

    borderColor(){
      switch (status) {
        case 0:
          return kPrimaryColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnavailableColor;
        default:
          return kUnavailableColor;
      }
    }

    child(){
       switch (status) {
        case 0:
          return SizedBox();
        case 1:
          return SizedBox();
        case 2:
          return Center(
            child: Text(
              'X',
              style: whiteTextStyle.copyWith(
                fontSize: 16
              ),
            ),
          );
        default:
          return Center(
          child: Text(
            'X',
            style: whiteTextStyle.copyWith(
              fontSize: 16
            ),
          ),
        );
      }
    }

    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: backgroundColor(),
        border: Border.all(
          color: borderColor(),
        ),
      ),
      child: child(),
    );
  }
}
