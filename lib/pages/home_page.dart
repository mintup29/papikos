// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:papikos/models/city.dart';
import 'package:papikos/models/space.dart';
import 'package:papikos/models/tips.dart';
import 'package:papikos/pages/card_page.dart';
import 'package:papikos/pages/chatPage.dart';
import 'package:papikos/pages/detail_page.dart';
import 'package:papikos/pages/wishlist_page.dart';
import 'package:papikos/theme.dart';
import 'package:papikos/widgets/bottom_navbar_item.dart';
import 'package:papikos/widgets/city_card.dart';
import 'package:papikos/widgets/space_card.dart';
import 'package:papikos/widgets/tips_card.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(
              height: edge,
            ),
          // NOTE : TITLE/HEADER
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Explore Now', 
                style: blackTextStyle.copyWith(
                fontSize: 24,
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Mencari Kosan dengan mudah',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // NOTE : POPULAR CITIES
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Kota Populer',
                style: regulerTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 24,
                  ),
                  CityCard(
                    City(
                      id: 1,
                      name: 'Jakarta',
                      imageUrl: 'assets/city1.png',
                      isPopular: true, 
                    )
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                      id: 2,
                      name: 'Surakarta',
                      imageUrl: 'assets/city2.png',
                      isPopular: true,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                      id: 3,
                      name: 'Surabaya',
                      imageUrl: 'assets/city3.png',
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // NOTE: RECOMMENDED SPACE
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Rekomendasi Kost',
                style: regulerTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: Column(
                children: [
                  SpaceCard(
                    Space(
                      id: 1,
                      name: 'Kost Kosan',
                      imageUrl: 'assets/space1.png',
                      price: 500000,
                      city: 'Surakarta',
                      province: 'Jawa Tengah',
                      rating: 4,
                    )
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SpaceCard(
                    Space(
                      id: 1,
                      name: 'Kosan Kost',
                      imageUrl: 'assets/space2.png',
                      price: 400000,
                      city: 'Surakarta',
                      province: 'Jawa Tengah',
                      rating: 4,
                    )
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SpaceCard(
                    Space(
                      id: 1,
                      name: 'Kost KOST',
                      imageUrl: 'assets/space3.png',
                      price: 1000000,
                      city: 'Jakarta Pusat',
                      province: 'DKI Jakarta',
                      rating: 5,
                    )
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // NOTE: TIPS & GUIDANCE
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Tips dan Panduan',
                style: regulerTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: Column(
                children: [
                  TipsCard(
                    Tips(
                      id: 1,
                      title: 'Panduan dalam Kota', 
                      imageUrl: 'assets/tips1.png', 
                      updatedAt: '06 Juli 22',
                    )
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TipsCard(
                    Tips(
                      id: 1,
                      title: 'Jakarta Fairship', 
                      imageUrl: 'assets/tips2.png', 
                      updatedAt: '05 Juli 22',
                    )
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60 + edge,
            ),
          ],
        ),
      ),
      floatingActionButton: 
        Container(
          height: 65,
          width: MediaQuery.of(context).size.width - (2 * edge),
          margin: EdgeInsets.symmetric(
            horizontal: edge,
          ),
          decoration: BoxDecoration(
            color: Color(0xffF6F7F8),
            borderRadius: BorderRadius.circular(23),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomNavbarItem(
                imageUrl: 'assets/Icon_home.png',
                isActive: true,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatPage(),
                    ),
                  );
                },
                child: BottomNavbarItem(
                  imageUrl: 'assets/Icon_mail.png',
                  isActive: false,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CardPage(),
                    ),
                  );
                },
                child: BottomNavbarItem(
                  imageUrl: 'assets/Icon_card.png',
                  isActive: false,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WishlistPage(),
                    ),
                  );
                },
                child: BottomNavbarItem(
                  imageUrl: 'assets/Icon_love.png',
                  isActive: false,
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}