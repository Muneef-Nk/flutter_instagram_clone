import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconMessage extends StatelessWidget {
final int messageCount;
  IconMessage({
   required this.messageCount,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/chat.svg',
                height: 25,
              )),
        ),
        Positioned(
          top: 5,
          right: 10,
          child: Container(
            padding: EdgeInsets.all(2),
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Center(child: Text('$messageCount', style: TextStyle(fontWeight: FontWeight.bold),)),
          ),
        )
      ],
    );
  }
}
