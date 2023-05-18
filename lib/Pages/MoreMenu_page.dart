import 'package:blue_bank/widgets/MenuBottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class MoreMenu_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      home: Scaffold(
        body: MyNestedScrollWidget(),
      ),
    );
  }
}

class MyNestedScrollWidget extends StatelessWidget {
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
                    IconButton(
                      icon: const Icon(
                        Ionicons.help_circle_outline,
                        size: 25,
                        color: Colors.blue,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                pinned: false, // تغییر به false
                expandedHeight: 200,
                backgroundColor: const Color.fromARGB(255, 11, 94, 163),
                flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromARGB(81, 71, 129, 176),
                        Color.fromARGB(22, 28, 129, 176),
                      ],
                    ),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [],
                      // ),
                      Icon(
                        MaterialCommunityIcons.qrcode_scan,
                        color: Colors.white,
                        size: 80,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text("انتقال و دریافت با کد QR",
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              package: 'persian_fonts',
                              fontFamily: 'Vazir',
                              fontSize: 17,
                              color: Colors.white)),

                      SizedBox(
                        height: 30,
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
                Padding(
                  padding: const EdgeInsets.only(right: 30, left: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/Gift.png",
                              height: 60,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text("پاداش",
                                style: TextStyle(
                                    package: 'persian_fonts',
                                    fontFamily: 'Vazir',
                                    fontSize: 14,
                                    color: Colors.white))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/bill.png",
                              height: 60,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text("قبض",
                                style: TextStyle(
                                    package: 'persian_fonts',
                                    fontFamily: 'Vazir',
                                    fontSize: 14,
                                    color: Colors.white))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/website.png",
                              height: 60,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text("اینترنت",
                                style: TextStyle(
                                    package: 'persian_fonts',
                                    fontFamily: 'Vazir',
                                    fontSize: 14,
                                    color: Colors.white))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/sim.png",
                              height: 60,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("شارژ",
                                style: TextStyle(
                                    package: 'persian_fonts',
                                    fontFamily: 'Vazir',
                                    fontSize: 14,
                                    color: Colors.white))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/card.png",
                              height: 60,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text("کارت به کارت",
                                style: TextStyle(
                                    package: 'persian_fonts',
                                    fontFamily: 'Vazir',
                                    fontSize: 14,
                                    color: Colors.white))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ]),
        ),
        bottomNavigationBar: const MenuBottom(
          colorAccount: Colors.white,
          creditcard: Colors.white,
          colorMenu: Colors.blue,
          colorswap: Colors.white,
          colorHome: Colors.white,
        ));
  }
}
