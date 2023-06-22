import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone/screens/addPost.dart';
import 'package:instagram_clone/screens/profile.dart';
import 'package:instagram_clone/screens/reels.dart';
import 'package:instagram_clone/screens/search.dart';
import 'package:instagram_clone/widgects/circleProfile.dart';

import 'screens/home.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  Image img = Image.network('https://randomuser.me/api/portraits/men/22.jpg');
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    List pages=[
      ScreenHome(),
      ScreenSearch(),
      ScreenPost(),
      ScreenReel(),
      ScreenProfile(),
    ];

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black38,
        type: BottomNavigationBarType.fixed,

        onTap: (index){
          setState(() {
            _currentIndex=index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: SvgPicture.asset('assets/home.svg',height: 23, ) ,
          ),
          BottomNavigationBarItem(
            label: '',
            icon: SvgPicture.asset('assets/search.svg',height: 23,) ,
          ),
          BottomNavigationBarItem(
            label: '',
            icon: SvgPicture.asset('assets/plus-sign.svg',height: 23,) ,
          ), BottomNavigationBarItem(
            label: '',
            icon: SvgPicture.asset('assets/video.svg',height: 23,) ,
          ),
        BottomNavigationBarItem(
            label: '',
            icon: CircleAvatar(
              radius: 17,
               backgroundImage: img.image,
            ),
          ),
        ],
      ),


      // bottomNavigationBar: Container(
      //   width: double.infinity,
      //   height: 60,
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: [
      //       GestureDetector(
      //           onTap: (){
      //             setState(() {
      //               _currentIndex=0;
      //             });
      //           },
      //           child: SvgPicture.asset('assets/home.svg', height: 25,)),
      //       SvgPicture.asset('assets/home.svg', height: 25),
      //       SvgPicture.asset('assets/home.svg', height: 25),
      //       SvgPicture.asset('assets/home.svg', height: 25),
      //       SvgPicture.asset('assets/home.svg', height: 25),
      //     ],
      //   ),
      // ),
      body: pages[_currentIndex],
    );
  }
}
