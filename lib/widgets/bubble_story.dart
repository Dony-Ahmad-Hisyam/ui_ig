import 'package:flutter/material.dart';

class BubbleStory extends StatefulWidget {
  const BubbleStory({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  State<BubbleStory> createState() => _BubbleStoryState();
}

class _BubbleStoryState extends State<BubbleStory> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.amber,
              backgroundImage: NetworkImage(
                  'https://i.pravatar.cc/100?u=${widget.name}'), // Perbaiki penggunaan widget.name
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(widget.name),
            )
          ],
        ));
  }
}
