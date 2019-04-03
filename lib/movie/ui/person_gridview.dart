import 'package:flutter/material.dart';
import 'package:flutter_app/bean/casts.dart';

class PersonGridView extends StatelessWidget {
  final Casts casts;
  final Color textColor;
  final VoidCallback onTap;

  PersonGridView({
    Key key,
    this.casts,
    this.textColor = Colors.grey,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90.0,
      child: Column(
        children: <Widget>[
          GestureDetector(
            //点击事件
            onTap: onTap,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                casts.avatars.small.toString(),
              ),
              radius: 40.0,
            ),
          ),
          Text(
            casts.name,
            maxLines: 1,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: textColor),
          ),
        ],
      ),
    );
  }
}
