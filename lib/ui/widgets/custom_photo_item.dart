import 'package:flutter/material.dart';

class CustomPhotoItem extends StatelessWidget {
  final String imageUrl;

  const CustomPhotoItem({
    Key? key,
    required this.imageUrl,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
        bottom: 30, 
        right: 15
      ),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(
            imageUrl,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
