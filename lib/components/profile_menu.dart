import 'package:flutter/material.dart';
import 'package:modern_navbar/constant/constant.dart';


class ProfileMenu extends StatelessWidget {
  final String title;
  final IconData icons;
 
   ProfileMenu({
    Key? key,
    required this.title,
    required this.icons,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey,
              child: Icon(
            icons,
            size: 20,
            color: iconPrimaryColor,
          )),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: textMenu,
          ),
          const Spacer(),
          const CircleAvatar(
            radius: 16,
            backgroundColor: Colors.grey,
          child:Icon(
            Icons.arrow_forward_ios,
            size: 20,
            color: iconSecondaryColor,
          ),
          ),
        ],
      ),
    );
  }
}


