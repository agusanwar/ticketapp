import 'package:flutter/material.dart';
import 'package:ticketapp/models/destinaiton_model.dart';
import 'package:ticketapp/shared/themes.dart';
import 'package:ticketapp/ui/screens/detail_screen.dart';

class DestinationTile extends StatelessWidget {
  final DestinationModel destination;

  const DestinationTile(
    this.destination, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailScreen(destination)));
      },
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(
          top: 20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: kWhiteColor,
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 15),
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(destination.imageUrl!),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    destination.name!,
                    style: blackTextStyle.copyWith(
                        fontSize: 20, fontWeight: semiBold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    destination.city!,
                    style:
                        greyTextStyle.copyWith(fontSize: 16, fontWeight: medium),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        margin: EdgeInsets.only(
                          right: 5,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/icons/icon_start.png',
                            ),
                          ),
                        ),
                      ),
                      Text(
                        destination.rating.toString(),
                        style: blackTextStyle.copyWith(fontWeight: medium),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: kSecondaryColor,
              ),
              child: Center(
                child: Icon(Icons.favorite, color: kRedColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
