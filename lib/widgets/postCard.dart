import 'package:flutter/material.dart';
import 'package:snap_stream/assets.dart';
import 'package:snap_stream/widgets/avatar.dart';

class PostCard extends StatelessWidget {
  final String tweetText;
  final String avatar;
  final String feedImage;
  final String snapId;

  PostCard(
      {required this.tweetText,
      required this.avatar,
      required this.feedImage,
      required this.snapId});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          PostCardHeader(),
          Divider(
            thickness: 1,
          ),
          titleSection(),
          SizedBox(
            height: 5,
          ),
          PostImage(),
        ],
      ),
    );
  }

  Widget titleSection() {
    return tweetText != null && tweetText != ""
        ? Container(
            padding: EdgeInsets.only(bottom: 5),
            child: Text(
              tweetText == null ? "" : tweetText,
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          )
        : SizedBox();
  }

  Widget PostImage() {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: Image.asset(feedImage),
    );
  }

  Widget PostCardHeader() {
    return ListTile(
      leading: Avatar(
        displayImage: avatar,
        imageWidth: 30,
        imageHeight: 30,
      ),
      title: Text(
        snapId,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
