import 'package:blue_bank/Pages/Card_page.dart';
import 'package:blue_bank/Pages/MoreMenu_page.dart';
import 'package:blue_bank/Pages/Profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:blue_bank/Pages/MainHome_page.dart';
import 'package:get/get.dart';

class MenuBottom extends StatelessWidget {
  final Color colorswap;
  final Color colorAccount;
  final Color creditcard;
  final Color colorHome;
  final Color colorMenu;

  const MenuBottom({
    required this.colorswap,
    required this.creditcard,
    required this.colorAccount,
    required this.colorHome,
    required this.colorMenu,
  });

  @override
  Widget build(BuildContext context) {
    double size = 28;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 50,
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(color: Color.fromRGBO(248, 248, 248, 1)),
            ),
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            GestureDetector(
              onTap: () => Get.to(ProfilePage()),
              child: Icon(
                MaterialCommunityIcons.account_settings_outline,
                color: colorAccount,
                size: size,
              ),
            ),
            GestureDetector(
              onTap: () => Get.to(CardPage()),
              child: Icon(
                MaterialCommunityIcons.credit_card_fast_outline,
                color: creditcard,
                size: size,
              ),
            ),
            GestureDetector(
              onTap: () => Get.to(MoreMenu_page()),
              child: Icon(
                Ionicons.ios_apps,
                color: colorMenu,
                size: size,
              ),
            ),
            Icon(
              MaterialIcons.swap_horiz,
              color: colorswap,
              size: size,
            ),
            GestureDetector(
              onTap: () => Get.to(MainHomePage()),
              child: Icon(
                Ionicons.home_outline,
                color: colorHome,
                size: size,
              ),
            ),
          ])),
    );
  }
}
