import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ticketapp/cubit/auth_cubit.dart';
import 'package:ticketapp/cubit/destinaiton_cubit.dart';
import 'package:ticketapp/models/destinaiton_model.dart';
import 'package:ticketapp/shared/themes.dart';
import 'package:ticketapp/ui/widgets/destination_card.dart';
import 'package:ticketapp/ui/widgets/destination_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // facting data
    context.read<DestinaitonCubit>().fetchDestination();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Container(
                margin: EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello\n${state.user.name}',
                            style: blackTextStyle.copyWith(
                                fontSize: 24, fontWeight: semiBold),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Whe are you today',
                            style: greyTextStyle.copyWith(
                                fontSize: 16, fontWeight: light),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/image_profile.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          } else {
            return Container();
          }
        },
      );
    }

    Widget destination(List<DestinationModel> destination) {
      // DESTINAITON
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: destination.map((DestinationModel destination) {
              return DestinationCard(destination);
            }).toList(),
          ),
        ),
      );
    }

    Widget destinaitonTile(List<DestinationModel> destination) {
      // TILE DESTINAITON
      return Container(
        margin: EdgeInsets.only(
          top: 40,
          left: 24,
          right: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Top Destinations',
              style:
                  blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
            ),
            Column(
              children: destination.map((DestinationModel destination) {
                return DestinationTile(destination);
              }).toList(),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      );
    }

    return BlocConsumer<DestinaitonCubit, DestinaitonState>(
      listener: (context, state) {
        if (state is DestinationFailed) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: kRedColor,
              content: Text(state.error),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state is DestinaitonSuccess) {
          return ListView(
            children: [
              header(),
              destination(state.destination),
              destinaitonTile(state.destination),
              Container(
                margin: EdgeInsets.only(bottom: 60),
              )
            ],
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
