import 'package:blue_bank/widgets/MenuBottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class MainHomePage extends StatelessWidget {
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
                        icon: Icon(Ionicons.help_circle_outline),
                        onPressed: () {},
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      IconButton(
                        icon: const Icon(
                          Fontisto.bell,
                          // size: 48,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const Text(
                    'خانه',
                    style: TextStyle(
                        package: 'persian_fonts',
                        fontFamily: 'Vazir',
                        fontSize: 15),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Ionicons.ios_wallet_outline,
                          // size: 48,
                        ),
                        onPressed: () {},
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      IconButton(
                        icon: const Icon(
                          EvilIcons.search,
                          // size: 48,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
              pinned: false, // تغییر به false
              expandedHeight: 280,
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "ریال",
                          style: TextStyle(
                              package: 'persian_fonts',
                              fontFamily: 'Vazir',
                              fontSize: 23,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(replaceFarsiNumber("98,812,388"),
                            style: const TextStyle(
                                package: 'persian_fonts',
                                fontFamily: 'Vazir',
                                fontSize: 23,
                                color: Colors.white)),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.keyboard_arrow_down_sharp,
                            color: Colors.white),
                        SizedBox(
                          width: 5,
                        ),
                        Text("موجودی",
                            style: TextStyle(
                                package: 'persian_fonts',
                                fontFamily: 'Vazir',
                                fontSize: 17,
                                color: Colors.white)),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(28, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(100)),
                              child: const Center(
                                child: Icon(
                                  AntDesign.linechart,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const Text("مدیریت مالی",
                                style: TextStyle(
                                    package: 'persian_fonts',
                                    fontFamily: 'Vazir',
                                    fontSize: 15,
                                    color: Colors.white)),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(28, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(100)),
                              child: const Center(
                                child: Icon(
                                  Feather.codesandbox,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const Text("باکس",
                                style: TextStyle(
                                    package: 'persian_fonts',
                                    fontFamily: 'Vazir',
                                    fontSize: 15,
                                    color: Colors.white)),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100)),
                              child: const Center(
                                child: Icon(
                                  Ionicons.add_sharp,
                                  color: Colors.blue,
                                  // size: 48,
                                ),
                              ),
                            ),
                            const Text("شارژ حساب",
                                style: TextStyle(
                                    package: 'persian_fonts',
                                    fontFamily: 'Vazir',
                                    fontSize: 15,
                                    color: Colors.white)),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    )
                  ],
                ),
              )),
            ),
          ];
        },
        body: CustomScrollView(
          physics:
              NeverScrollableScrollPhysics(), // تغییر به NeverScrollableScrollPhysics
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => ListTile(
                  // titleAlignment: ListTileTitleAlignment.center,
                  trailing: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(28, 255, 255, 255),
                        borderRadius: BorderRadius.circular(100)),
                    child: const Center(
                      child: Icon(
                        AntDesign.swap,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  title: const Align(
                      alignment: Alignment.centerRight,
                      child: Text("انتقال به کارت",
                          style: TextStyle(
                              package: 'persian_fonts',
                              fontFamily: 'Vazir',
                              fontSize: 15,
                              color: Colors.white))),
                  leading: Text(replaceFarsiNumber("27,000,000 ریال"),
                      textDirection: TextDirection.rtl,
                      style: const TextStyle(
                          package: 'persian_fonts',
                          fontFamily: 'Vazir',
                          fontSize: 15,
                          color: Colors.white)),
                  subtitle: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                          replaceFarsiNumber("جمعه 22 اردیبهشت 1402 21:05"),
                          style: const TextStyle(
                              package: 'persian_fonts',
                              fontFamily: 'Vazir',
                              fontSize: 15,
                              color: Colors.white))),
                ),
                childCount: 50,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const MenuBottom(
        colorAccount: Colors.white,
        creditcard: Colors.white,
        colorMenu: Colors.white,
        colorswap: Colors.white,
        colorHome: Colors.blue,
      ),
    );
  }
}
