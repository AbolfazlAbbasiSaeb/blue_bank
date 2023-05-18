import 'package:blue_bank/widgets/ListTitle.dart';
import 'package:blue_bank/widgets/MenuBottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MyNestedScrollWidget(),
      ),
    );
  }
}

class MyNestedScrollWidget extends StatelessWidget {
  String replaceFarsiNumber(String input) {
    const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
    const farsi = ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹'];

    for (int i = 0; i < english.length; i++) {
      input = input.replaceAll(english[i], farsi[i]);
    }

    return input;
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 30, 36, 45),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Ionicons.help_circle_outline,
                            size: 25,
                            color: Colors.blue,
                          ),
                          onPressed: () {},
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        IconButton(
                          icon: Icon(
                            Ionicons.share_outline,
                            size: 25,
                            color: Colors.blue,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Text(
                      'پروفایل',
                      style: TextStyle(
                          package: 'persian_fonts',
                          fontFamily: 'Vazir',
                          fontSize: 15),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 60,
                        ),
                        IconButton(
                          icon: Icon(
                            MaterialCommunityIcons.qrcode_scan,
                            color: Colors.blue,
                            size: 25,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
                pinned: false, // تغییر به false
                expandedHeight: 200,
                backgroundColor: const Color.fromARGB(28, 255, 255, 255),
                flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [],
                      // ),
                      Image.asset(
                        "assets/avatar.png",
                        height: 90,
                      ),
                      Text("ابوالفضل عباسی صائب",
                          style: TextStyle(
                              package: 'persian_fonts',
                              fontFamily: 'Vazir',
                              fontSize: 17,
                              color: Colors.white)),
                      Text(replaceFarsiNumber("09120396189"),
                          style: TextStyle(
                              package: 'persian_fonts',
                              fontFamily: 'Vazir',
                              fontSize: 17,
                              color: Color.fromARGB(132, 255, 255, 255))),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                )),
              ),
            ];
          },
          body: ListView(children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 45,
                    height: 4.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color.fromARGB(28, 255, 255, 255), // رنگ خط
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset(
                    "assets/banner.png",
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'تنظیمات',
                        style: TextStyle(
                            package: 'persian_fonts',
                            fontFamily: 'Vazir',
                            color: Colors.white,
                            fontSize: 15),
                      ),
                    ),
                  ],
                ),
                const MyListTile(
                  title: "حساب کاربری",
                  subtitle: "اطلاعات بانکی و شخصی",
                  icon: MaterialCommunityIcons.account_eye,
                ),
                const MyListTile(
                  title: "امنیت و حریم خصوصی",
                  subtitle: "رمز عبور و تراکنش,اثر انگشت و ...",
                  icon: MaterialCommunityIcons.security,
                ),
                const MyListTile(
                  title: "اطلاع رسانی",
                  subtitle: "تنظیمات و نوتیفیکیشن",
                  icon: Fontisto.bell,
                ),
                const MyListTile(
                  title: "نمایش بلو",
                  subtitle: "حالت شب و روز",
                  icon: FontAwesome.paint_brush,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'عمومی',
                        style: TextStyle(
                            package: 'persian_fonts',
                            fontFamily: 'Vazir',
                            color: Colors.white,
                            fontSize: 15),
                      ),
                    ),
                  ],
                ),
                const MyListTile(
                  title: "بلوکلاب",
                  subtitle: "فعالیت بیشتر, جایزه بیشتر",
                  icon: AntDesign.gift,
                ),
                const MyListTile(
                  title: "پشتیبانی",
                  subtitle: "گفتگو, تماس و تمامی سوالات متداول",
                  icon: Fontisto.ticket,
                ),
                const MyListTile(
                  title: "دعوت از دوستان",
                  subtitle: "دریافت هدیه با دعوت دوستان",
                  icon: MaterialCommunityIcons.account_group_outline,
                ),
                const Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Text(
                    'طراحی شده توسط Abolfazl Abbasi',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        package: 'persian_fonts',
                        fontFamily: 'Vazir',
                        color: Colors.blue,
                        fontSize: 13),
                  ),
                ),
              ],
            ),
          ]),
        ),
        bottomNavigationBar: const MenuBottom(
          colorAccount: Colors.blue,
          creditcard: Colors.white,
          colorMenu: Colors.white,
          colorswap: Colors.white,
          colorHome: Colors.white,
        ));
  }
}
