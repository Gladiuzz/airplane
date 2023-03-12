import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/destination_card.dart';
import 'package:airplane/ui/widgets/destination_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Howdy,\nKezia Anne',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Where to fly today?',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/icon_profile2.jpeg'))),
            )
          ],
        ),
      );
    }

    Widget popularDestination() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              DestinationCard(
                title: 'Lake Ciliwung',
                city: 'Tangerang',
                imgUrl: 'assets/img_destination1.png',
                rating: 4.8,
              ),
              DestinationCard(
                title: 'Menarra',
                city: 'Tokyo',
                imgUrl: 'assets/img_destination4.png',
                rating: 4.7,
              ),
              DestinationCard(
                title: 'Umbrella Tree',
                city: 'Singapore',
                imgUrl: 'assets/img_destination5.png',
                rating: 4.9,
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestinations() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
          bottom: 100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'New This Year',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            DestinationTile(
              city: 'Singaraja',
              title: 'Danau Beratan',
              imgUrl: 'assets/img_destination5.png',
              rating: 4.7,
            ),
            DestinationTile(
              city: 'Singaraja',
              title: 'Danau Beratan',
              imgUrl: 'assets/img_destination5.png',
              rating: 4.7,
            ),
            DestinationTile(
              city: 'Singaraja',
              title: 'Danau Beratan',
              imgUrl: 'assets/img_destination5.png',
              rating: 4.7,
            ),
            DestinationTile(
              city: 'Singaraja',
              title: 'Danau Beratan',
              imgUrl: 'assets/img_destination5.png',
              rating: 4.7,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: <Widget>[
        header(),
        popularDestination(),
        newDestinations(),
      ],
    );
  }
}
