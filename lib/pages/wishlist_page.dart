import 'package:flutter/material.dart';
import 'package:papikos/models/space.dart';
import 'package:papikos/pages/card_page.dart';
import 'package:papikos/pages/chatPage.dart';
import 'package:papikos/pages/home_page.dart';
import 'package:papikos/theme.dart';
import 'package:papikos/widgets/bottom_navbar_item.dart';
import 'package:papikos/widgets/space_card.dart';

class WishlistPage extends StatelessWidget {
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
                'My Wishlist', 
                style: blackTextStyle.copyWith(
                fontSize: 24,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Daftar Kost Incaranku',
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
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                child: BottomNavbarItem(
                  imageUrl: 'assets/Icon_home_solid.png',
                  isActive: false,
                ),
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
                  imageUrl: 'assets/Icon_love_solid.png',
                  isActive: true,
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}