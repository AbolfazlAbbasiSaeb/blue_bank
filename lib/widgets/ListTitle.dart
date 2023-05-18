import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class MyListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const MyListTile({
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Center(
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
      ),
      title: Align(
        alignment: Alignment.centerRight,
        child: Text(
          title,
          style: const TextStyle(
            package: 'persian_fonts',
            fontFamily: 'Vazir',
            fontSize: 15,
            color: Colors.white,
          ),
        ),
      ),
      leading: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Icon(
          AntDesign.left,
          color: Color.fromARGB(79, 255, 255, 255),
          size: 20,
        ),
      ),
      subtitle: Align(
        alignment: Alignment.centerRight,
        child: Text(
          subtitle,
          textDirection: TextDirection.rtl,
          style: const TextStyle(
            package: 'persian_fonts',
            fontFamily: 'Vazir',
            fontSize: 13,
            color: Color.fromARGB(79, 255, 255, 255),
          ),
        ),
      ),
    );
  }
}
