import 'package:blue_bank/Pages/MainHome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class LoginPagePage extends StatefulWidget {
  static const String routeName = '/loginPage';

  @override
  _LoginPagePageState createState() => _LoginPagePageState();
}

class _LoginPagePageState extends State<LoginPagePage> {
  bool isFocused = false;
  final FocusNode _focusNode = FocusNode();
  bool _obscureText = true;
  bool _showIcon = false;
  TextEditingController _UsernameController = TextEditingController();
  TextEditingController _PasswordController = TextEditingController();
  // Color _containerColor = Color.fromRGBO(124, 145, 174, 1);
  bool _containerColor = false;

  @override
  void initState() {
    super.initState();
    _UsernameController.addListener(updateContainerColor);
    _PasswordController.addListener(updateContainerColor);
    _PasswordController.addListener(() {
      setState(() {
        _showIcon = _PasswordController.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    _UsernameController.dispose();
    _PasswordController.dispose();
    super.dispose();
  }

  void updateContainerColor() {
    setState(() {
      _containerColor = _UsernameController.text.isNotEmpty &&
          _PasswordController.text.isNotEmpty;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(27, 32, 40, 1),
        body: Padding(
          padding: const EdgeInsets.all(23.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: SvgPicture.asset(
                  "assets/blue.svg",
                  height: 40,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    isFocused = true;
                  });
                  // print("isFocused");
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: isFocused
                          ? Colors.blue
                          : Color.fromARGB(0, 255, 255, 255),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromRGBO(43, 51, 64, 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15, left: 15),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  color: Color.fromRGBO(
                                      136, 145, 158, 1)), // رنگ حاشیه داخلی
                            ),
                          ),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: TextField(
                              controller: _UsernameController,
                              decoration: const InputDecoration(
                                hintText: 'نام کاربری',
                                hintStyle: TextStyle(
                                    package: 'persian_fonts',
                                    fontFamily: 'Vazir',
                                    color: Color.fromRGBO(136, 145, 158, 1)),
                                border: InputBorder.none,
                              ),
                              onTap: () {
                                setState(() {
                                  isFocused = true;
                                });
                              },
                              onChanged: (value) {
                                setState(() {});
                              },
                              textInputAction: TextInputAction.next,
                              onEditingComplete: () {
                                FocusScope.of(context).nextFocus();
                              },
                              textAlign: TextAlign.right,
                              keyboardType: TextInputType.text,
                              textDirection: TextDirection.rtl,
                              style: const TextStyle(
                                package: 'persian_fonts',
                                color: Colors.white,
                                fontFamily: 'Vazir',
                              ),
                            ),
                          ),
                        ),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextField(
                            controller: _PasswordController,
                            obscureText: _obscureText,
                            focusNode: _focusNode,
                            decoration: InputDecoration(
                              suffixIcon: _showIcon
                                  ? IconButton(
                                      icon: Icon(_obscureText
                                          ? Icons.visibility
                                          : Icons.visibility_off),
                                      onPressed: () {
                                        setState(() {
                                          _obscureText = !_obscureText;
                                        });
                                      },
                                    )
                                  : null,
                              hintText: 'رمز عبور',
                              hintStyle: const TextStyle(
                                  package: 'persian_fonts',
                                  fontFamily: 'Vazir',
                                  color: Color.fromRGBO(136, 145, 158, 1)),
                              border: InputBorder.none,
                            ),
                            onTap: () {
                              setState(() {
                                isFocused = true;
                              });
                            },
                            onChanged: (value) {
                              setState(() {});
                            },
                            onEditingComplete: () {
                              setState(() {
                                isFocused = false;
                              });
                              _focusNode.unfocus();
                            },
                            textAlign: TextAlign.right,
                            keyboardType: TextInputType.phone,
                            textDirection: TextDirection.rtl,
                            style: const TextStyle(
                              package: 'persian_fonts',
                              color: Colors.white,
                              fontFamily: 'Vazir',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () => Get.to(MainHomePage()),
                child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                        color: _containerColor
                            ? Colors.blue
                            : Color.fromRGBO(124, 145, 174, 1),
                        // color: Color.fromRGBO(124, 145, 174, 1),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: const Center(
                      child: Text(
                        'ورود به بلو',
                        style: TextStyle(
                          package: 'persian_fonts',
                          fontFamily: 'Vazir',
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                child: const Text(
                  "نباز به کمک دارم",
                  style: TextStyle(
                    package: 'persian_fonts',
                    color: Colors.blue,
                    fontSize: 15,
                    fontFamily: 'Vazir',
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
