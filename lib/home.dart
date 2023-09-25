import 'package:facebook/assets.dart';
import 'package:facebook/sections/headerButtonSection.dart';
import 'package:facebook/sections/statusSection.dart';
import 'package:facebook/sections/storySection.dart';
import 'package:facebook/widgets/postcard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widgets/appBarButton.dart';
import 'package:facebook/sections/roomSection.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text(
              "facebook",
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              AppBarButton(
                  buttonIcon: Icons.search,
                  buttonAction: (){
                    print("Search screen appears!");
                  }
              ),
              AppBarButton(
                  buttonIcon: Icons.chat,
                  buttonAction: (){
                    print("Messenger appears!");
                  }
              ),

            ],
          ),
          body: ListView(
            children: [
              StatusSection(),
              Divider(thickness: 1, color: Colors.grey[300]),
              HeaderButtonSection(),
              Divider(
                thickness: 10,
                color: Colors.grey[300],
              ),
              RoomSection(),
              Divider(
                thickness: 10,
                color: Colors.grey[300],
              ),
              StorySection(),
              Divider(
                thickness: 10,
                color: Colors.grey[300],
              ),
              PostCard(
                name: "call of duty",
                avatar: ghost,
                publisheAdt: '5h',
                postTitle: "Modern Warfare III",
                postImage: mw3,
                showBlueTick: true,
              ),
            ],
          ),
        )
    );
  }
}