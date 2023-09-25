
import 'package:facebook/assets.dart';
import 'package:facebook/widgets/storycard.dart';
import 'package:flutter/material.dart';


class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          storyCard(
            labelText:"Add to story",
            avatar:john,
            story: john,
            createStoryStatus: true,
          ),
          storyCard(
            labelText:"ghost",
            avatar:ghost,
            story: ghost,
            displayBorder:true,
          ),
          storyCard(
            labelText:"soap",
            avatar:soap,
            story: soap,
            displayBorder:true,
          ),
          storyCard(
            labelText:"gaz",
            avatar:gaz,
            story: gaz,
            displayBorder:true,
          ),
          storyCard(
            labelText:"alejandro",
            avatar:alejandro,
            story: alejandro,
            displayBorder:true,
          ),
        ],
      ),
    );
  }
}