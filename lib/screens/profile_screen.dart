import 'package:flutter/material.dart';
import 'package:modern_navbar/components/profile_img.dart';
import 'package:modern_navbar/components/profile_menu.dart';
import 'package:modern_navbar/constant/constant.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // the Scaffold is used for the nav part
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          size: 24,
          color: iconSecondaryColor,
        ), //we used Icons instead of Iconsax because it doesn't work
        title: Center(
            child: Text(
          'Profile',
          style: textTitle,
        )),
        actions: const [
          Icon(
            Icons.light_mode,
            size: 26,
            color: iconSecondaryColor,
          ),
          SizedBox(
            width: 15.0,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //       crossAxisAlignment: CrossAxisAlignment.center, //because this does not work horizontally?
            children: [
              const SizedBox(
                height: 20,
              ),
              //Image_Profile
              const ProfileImage(),
              //Detail Profile
              const SizedBox(
                height: 20,
              ),
              Text(
                'Mickyla Reginio',
                style: textTitle,
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                'mickylag.reginio@gmail.com',
                style: textSubTitle,
              ),
        
        
              // Button Edit
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                height: 35,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  // color: Colors.blue,
                  child: Center(
                      child: Text(
                    'Edit Profile',
                    style: textBtn,
                  )),
                ),
              ),
              const SizedBox(  //delete this
                height: 30,
              ),
        
              //Menu profile
              const SizedBox(
                height: 15,
              ),
               ProfileMenu(title: 'Settings', icons:Icons.settings,),
                const SizedBox( //delete this
                height: 7,
              ),
               ProfileMenu(title: 'Billing Details', icons:Icons.wallet,),
                const SizedBox( //delete this
                height: 7,
              ),
               ProfileMenu(title: 'User Management', icons:Icons.person_add,),
               const SizedBox( //delete this
                height: 30
              ), 
               ProfileMenu(title: 'Information', icons:Icons.info_outline,), 
                const SizedBox( //delete this
                height: 7,
              ),     
               ProfileMenu(title: 'Log Out', icons:Icons.logout,), 
                const SizedBox( //delete this
                height: 7,
              ),     
            ],
          ),
        ),
      ),
    );
  }
}

