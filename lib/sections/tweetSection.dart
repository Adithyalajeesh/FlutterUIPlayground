import 'package:flutter/material.dart';
import 'package:snap_stream/assets.dart';
import 'package:snap_stream/widgets/avatar.dart';

class TweetSection extends StatelessWidget {
  const TweetSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Avatar(
          displayImage: eleven,
          imageWidth: 50,
          imageHeight: 50,
        ),
        title: TextField(
          decoration: InputDecoration(
            hintText: "What's on your mind?",
            hintStyle: TextStyle(color: Colors.black54),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
          ),
        ),
        trailing: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Stack(
            children: [
              Positioned.fill(
                  child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.pink,
                  Colors.pinkAccent,
                  Colors.white
                ])),
              )),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  print("Posted");
                },
                child: const Text(
                  'Post',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ));
  }
}
