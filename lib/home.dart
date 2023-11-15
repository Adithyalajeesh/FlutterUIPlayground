import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:snap_stream/sections/circularbutton.dart';
import 'package:snap_stream/sections/tweetSection.dart';
import 'package:snap_stream/widgets/postCard.dart';
import 'package:snap_stream/assets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Snap Stream",
            style: TextStyle(
                color: Colors.pinkAccent, fontWeight: FontWeight.bold),
          ),
          actions: [
            CircularButton(
              buttonIcon: Icons.search,
              buttonAction: () {
                print("searchhhhhh");
              },
              buttonColor: Colors.pinkAccent,
            ),
            CircularButton(
              buttonIcon: Icons.message,
              buttonAction: () {
                print("message");
              },
              buttonColor: Colors.pinkAccent,
            ),
          ],
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            TweetSection(),
            Divider(
              thickness: 5,
            ),
            PostCard(
              avatar: max,
              tweetText: "Chill vibes in every bite. 🍦 #McDonaldsTreats",
              feedImage: maxpost,
              snapId: "Max milburn",
            ),
            PostCard(
              avatar: eleven,
              tweetText: "Two peas in a selfie pod. 👯‍♀️ #BestieBond",
              feedImage: elevenpost,
              snapId: "Eleven 0II",
            ),
            Divider(
              thickness: 5,
            ),

            PostCard(
              avatar: totoroavatar,
              tweetText: "Embracing the magic of everyday moments. ",
              feedImage: totoro,
              snapId: "Totorrrrro",
            ),
            Divider(
              thickness: 5,
            ),

            PostCard(
              avatar: tokyoavatar,
              tweetText: "Counting memories from the perfect heist",
              feedImage: reo,
              snapId: "Tokyo ",
            ),
            Divider(
              thickness: 5,
            ),

            PostCard(
              avatar: otisavatar,
              tweetText: "Morning glow and a selfie to show!",
              feedImage: otis,
              snapId: "Otis milburn",
            ),
            Divider(
              thickness: 5,
            ),

            PostCard(
              avatar: josavatar,
              tweetText: "Sipping joy, one coffee date at a time.",
              feedImage: josephine,
              snapId: "Josephine Langford",
            ),
            Divider(
              thickness: 5,
            ),

            PostCard(
              avatar: katherineavatar,
              tweetText:
                  "Dive into the darkness, where curses unfold. 🔮✨ Unleash the mystery. #CursedSeries #MustWatch",
              feedImage: katherine,
              snapId: "katherine Langford",
            ),
            Divider(
              thickness: 5,
            ),
            //posts and tweets
          ],
        ),
      ),
    );
  }
}
