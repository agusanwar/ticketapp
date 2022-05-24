import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ticketapp/cubit/page_cubit.dart';
import 'package:ticketapp/shared/themes.dart';

class CustomBottomNav extends StatelessWidget {
  final int index;
  final String imageUrl;
  final String title;

  const CustomBottomNav({
    Key? key,
    required this.index,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imageUrl,
            width: 24,
            height: 24,
            color: context.read<PageCubit>().state == index ? kPrimaryColor : kGreyColor,
            ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: Text(
              title,
              style: blackTextStyle.copyWith(
                color: context.read<PageCubit>().state == index ? kPrimaryColor : kGreyColor,
                fontSize: 12,
                fontWeight: medium
              ),),
          ),
        ],
      ),
    );
  }
}
