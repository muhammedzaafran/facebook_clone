import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(15),
        children: [
          createRoomButton(),
          Avatar(displayImage: john, displayStatus: true),
          Avatar(displayImage: ghost, displayStatus: true),
          Avatar(displayImage: soap, displayStatus: true),
          Avatar(displayImage: gaz, displayStatus: true),
          Avatar(displayImage: alejandro, displayStatus: true),

        ],
      ),
    );
  }
  Widget createRoomButton(){
    return Container(
      padding: EdgeInsets.only(left: 5,right: 10),
      child: OutlinedButton.icon(
        icon: Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        label: Text(
          "Create \nRoom",
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
        onPressed: () {
          print("Create a chat room!");
        },

        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          )),
        ),
      ),
    );
  }
}