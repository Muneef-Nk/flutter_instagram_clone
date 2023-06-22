import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/models/profile_model.dart';
import 'package:instagram_clone/widgects/post_section.dart';

import '../models/post_model.dart';
import '../widgects/circleProfile.dart';
import '../widgects/iconMessage.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Image.asset(
          'assets/logo.png',
          height: 70,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/heart.svg',
                height: 25,
              )),
          IconMessage(
            messageCount: 6,
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 115,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: ScrollPhysics(),
              child: Row(
                children: [
                  Stack(children: [
                    CircleProfile(
                      Path: 'https://randomuser.me/api/portraits/men/22.jpg',
                      Name: 'Your story',
                      statusBorder: false,
                      label: true,
                    ),
                    Positioned(
                      bottom: 30,
                      left: 55,
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        child: Icon(
                          Icons.add_circle,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ]),
                  for (int i = 0; i < profileDetails.length; i++) ...{
                    CircleProfile(
                      Name: profileDetails[i].profileName,
                      Path: profileDetails[i].imagePath,
                      statusBorder: true,
                      label: true,
                    )
                  }
                ],
              ),
            ),
          ),
          Divider(
            thickness: 1.5,
          ),
          for (int i = 0; i < PostDetails.length; i++) ...{
            PostSession(
              title: PostDetails[i].name,
              profile: PostDetails[i].profile,
              post: PostDetails[i].post,
              location: PostDetails[i].location,
              likeCount: PostDetails[i].likes,
              discription: PostDetails[i].discription,
            ),
            Divider()
          },
        ],
      ),
    );
  }
}
