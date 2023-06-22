import 'package:flutter/material.dart';

class CircleProfile extends StatelessWidget {
  final String Path;
  final String Name;
  final bool statusBorder;
  final bool label;


   CircleProfile({
      required this.Path,
      required this.Name,
      required this.statusBorder,
      required this.label,

});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(4),
          width: 85,
          height: 85,
          padding: EdgeInsets.all(2),
          decoration:statusBorder? BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Color(0xff7338bb),
                Color(0xffac32b3),
                Color(0xfff7782a),
                Color(0xffdc297c),
              ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight
            )
          ):null,
          child: Center(
            child: Container(
              padding: EdgeInsets.all(2.5),
              width:80,
              height: 80,
             decoration:statusBorder? BoxDecoration(
               shape: BoxShape.circle,
               color: Colors.white,
             ):null,
              child: CircleAvatar(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(Path),
                ),
              ),
            ),
          ),
        ),
        label?Text(Name):Text(''),
      ],
    );
  }
}
