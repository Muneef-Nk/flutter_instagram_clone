import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone/widgects/circleProfile.dart';

class PostSession extends StatefulWidget {
  final String profile;
  final String title;
  final String location;
  final String post;
  final String likeCount;
  final String discription;


  const PostSession({
    super.key,
    required this.profile,
    required this.title,
    required this.location,
    required this.post,
    required this.likeCount,
    required this.discription
  });

  @override
  State<PostSession> createState() => _PostSessionState();
}

class _PostSessionState extends State<PostSession> {

  bool isReadMore =false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: CircleAvatar(
               radius: 20,
               child: Image.network(widget.profile),
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              SizedBox(height: 2,),
              Text(widget.location, style: TextStyle(fontSize: 13),),
            ],
          ),
          trailing: Icon(Icons.more_vert),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 10),
          height: 450,
          child: Image.network(widget.post,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/heart.svg',width: 25,)),
                  IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/bubble-chat.svg',width: 25)),
                  IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/send.svg',width: 25)),
                ],
              ),
              IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/bookmark.svg',width: 25)),

            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Row(
            children: [
              Text(widget.likeCount, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
              SizedBox(width: 4,),
              Text('likes', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child:
              Text(widget.title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),

            ),
            TextButton(onPressed: (){
              setState(() {
                isReadMore=!isReadMore;
              });
            }, child:isReadMore? Text('less'):Text('more')),
          ],
        ),

        discriptionText(widget.discription),

      ],
    );
  }

  Widget discriptionText(String text) {
final maxLine = isReadMore?10:1;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
      child: Text(
          text,
        style: TextStyle(fontSize: 17),
        textAlign: TextAlign.justify,
        maxLines: maxLine,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
