import 'package:flutter/material.dart';
import 'package:modern_navbar/constant/constant.dart';


class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.bottomRight,
      children: [
        CircleAvatar(
            backgroundColor: Colors.white,
            radius: 68, //radius should be bigger than image

            child: CircleAvatar(
              backgroundImage:
                  AssetImage('assets/images/myprofile2.jpg'),
              radius: 65, //radius smaller than the frame
            )),
        CircleAvatar(
          backgroundColor: bgPrimaryColor,
          radius: 22,
          child: CircleAvatar(
            backgroundColor: Colors.purple,
            child: Icon(
              Icons.edit,
              size: 20,
              color: Colors.black,
            ),

          ),
        )
      ],
    );
  }
}