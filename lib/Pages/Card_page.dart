import 'package:blue_bank/widgets/ListTitle.dart';
import 'package:blue_bank/widgets/MenuBottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter_svg/svg.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MyNestedScrollWidget(),
      ),
    );
  }
}

class MyNestedScrollWidget extends StatefulWidget {
  @override
  State<MyNestedScrollWidget> createState() => _MyNestedScrollWidgetState();
}

class _MyNestedScrollWidgetState extends State<MyNestedScrollWidget> {
  double expandedHeight = 200;
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 30, 36, 45),
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
                          icon: const Icon(
                            Ionicons.help_circle_outline,
                            size: 25,
                            color: Colors.blue,
                          ),
                          onPressed: () {},
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        IconButton(
                          icon: const Icon(
                            Ionicons.share_outline,
                            size: 25,
                            color: Colors.blue,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const Text(
                      'کارت',
                      style: TextStyle(
                          package: 'persian_fonts',
                          fontFamily: 'Vazir',
                          fontSize: 15),
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 60,
                        ),
                        IconButton(
                          icon: const Icon(
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
                expandedHeight: expandedHeight,
                backgroundColor: const Color.fromARGB(28, 255, 255, 255),
                flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                  child: ListView(children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const SizedBox(
                          height: 54,
                        ),
                        FlipCard(
                          fill: Fill
                              .fillBack, // Fill the back side of the card to make in the same size as the front.
                          direction: FlipDirection.HORIZONTAL, // default
                          side:
                              CardSide.FRONT, // The side to initially display.
                          front: Column(
                            children: [
                              if (expandedHeight == 200)
                                GestureDetector(
                                  onTap: () {
                                    print(expandedHeight);
                                    setState(() {
                                      expandedHeight = 360;
                                    });
                                  },
                                  child: Container(
                                    width: 200,
                                    height: 300,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          height: 50,
                                        ),
                                        SvgPicture.asset(
                                          "assets/blue.svg",
                                          height: 40,
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        const Text(
                                          "bank, but lovely",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              Container(
                                width: 200,
                                height: 300,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 50,
                                    ),
                                    SvgPicture.asset(
                                      "assets/blue.svg",
                                      height: 40,
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    const Text(
                                      "bank, but lovely",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const SizedBox(
                                      height: 100,
                                    ),
                                    const Icon(
                                      MaterialCommunityIcons
                                          .axis_z_rotate_clockwise,
                                      color: Colors.white,
                                      size: 50,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          back: Container(
                            width: 200,
                            height: 300,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: [
                                Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Container(
                                          width: 35,
                                          height: 300,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ]),
                                Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Container(
                                          width: 120,
                                          height: 300,
                                          // color: Colors.black,
                                          child: const Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'ابوالفضل عباسی صائب',
                                                  style: TextStyle(
                                                      package: 'persian_fonts',
                                                      fontFamily: 'Vazir',
                                                      fontSize: 13),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  children: [],
                                                ),
                                                Row(
                                                  children: [
                                                    Text('6219'),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Text('8619'),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Text('0843'),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Text('9218'),
                                                  ],
                                                ),
                                                SizedBox(height: 15),
                                                Row(
                                                  children: [
                                                    Text(
                                                      'EXP',
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    ),
                                                    SizedBox(
                                                      width: 40,
                                                    ),
                                                    Text(
                                                      'CVV2',
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 5),
                                                Row(
                                                  children: [
                                                    Text(
                                                      '1403/05',
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    ),
                                                    SizedBox(
                                                      width: 20,
                                                    ),
                                                    Text(
                                                      '060',
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    ),
                                                  ],
                                                ),
                                              ]),
                                        ),
                                      ),
                                    ]),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ]),
                )),
              ),
            ];
          },
          body: ListView(children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: 100,
                          height: 70,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(28, 255, 255, 255),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(children: [
                              Icon(
                                MaterialCommunityIcons.key,
                                color: Color.fromARGB(197, 33, 149, 243),
                              ),
                              Text(
                                'رمز دوم پویا',
                                style: TextStyle(
                                    package: 'persian_fonts',
                                    fontFamily: 'Vazir',
                                    color: Color.fromARGB(197, 33, 149, 243),
                                    fontSize: 15),
                              ),
                            ]),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(
                          width: 100,
                          height: 70,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(28, 255, 255, 255),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(children: [
                              Icon(
                                MaterialCommunityIcons.share_variant_outline,
                                color: Color.fromARGB(197, 33, 149, 243),
                              ),
                              Text(
                                'شماره کارت و شبا',
                                style: TextStyle(
                                    package: 'persian_fonts',
                                    fontFamily: 'Vazir',
                                    color: Color.fromARGB(197, 33, 149, 243),
                                    fontSize: 15),
                              ),
                            ]),
                          ),
                        ),
                      ),
                    ],
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
                  title: "مسدود سازی موقت",
                  subtitle: "بلو کارت را به صورت موقت غیرفعال کنید",
                  icon: MaterialCommunityIcons.snowflake,
                ),
                const MyListTile(
                  title: "تنظیمات امنیتی",
                  subtitle: "تغییر و دریافت مجدد رمز بلوکارت",
                  icon: MaterialCommunityIcons.security,
                ),
                const MyListTile(
                  title: "تعویض بلوکارت",
                  subtitle: "میتوانید بلوکارت جدید را سفارش دهید",
                  icon: MaterialCommunityIcons.card_bulleted,
                ),
              ],
            ),
          ]),
        ),
        bottomNavigationBar: const MenuBottom(
          colorAccount: Colors.white,
          creditcard: Colors.blue,
          colorMenu: Colors.white,
          colorswap: Colors.white,
          colorHome: Colors.white,
        ));
  }
}
