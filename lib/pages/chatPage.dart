import 'package:flutter/material.dart';
import 'package:papikos/models/chatUsersModel.dart';
import 'package:papikos/pages/card_page.dart';
import 'package:papikos/pages/wishlist_page.dart';
import 'package:papikos/theme.dart';
import 'package:papikos/widgets/bottom_navbar_item.dart';
import 'package:papikos/pages/detail_page.dart';
import 'package:papikos/pages/home_page.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.all(edge),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Conversations",
                      style: blackTextStyle.copyWith(
                        fontSize: 24,
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: blueColor,
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.add,
                            color: whiteColor,
                            size: 20,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text("Add New", style: whiteTextStyle),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(color: greyColor),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.shade600,
                    size: 20,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.grey.shade100)),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Image.asset('assets/pp_kosong.png', width: 50),
                        SizedBox(width: 16,),
                        Expanded(
                          child: Container(
                            color: Colors.transparent,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Mintup', style: TextStyle(fontSize: 16),),
                                SizedBox(height: 6,),
                                Text('Apakah Masih Ada',style: TextStyle(fontSize: 13,color: Colors.grey.shade600),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text('19.00'),
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
                  imageUrl: 'assets/Icon_mail_solid.png',
                  isActive: true,
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