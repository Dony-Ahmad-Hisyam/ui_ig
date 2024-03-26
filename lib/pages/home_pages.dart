import 'package:flutter/material.dart';
import 'package:ig_ui/widgets/bubble_story.dart';
import 'package:ig_ui/widgets/user_post.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final List<String> users = const [
    'Dony',
    'Ahmad',
    'Hisyam',
    'SamTole',
    'Vinz',
    'Loops'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.camera_alt_outlined, color: Colors.green),
            Expanded(
              child: Center(
                child: Text(
                  'Instagram',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.green),
                ),
              ),
            ),
            Icon(Icons.send_outlined, color: Colors.green),
          ],
        ),
      ),
      body: Column(
        verticalDirection: VerticalDirection.down,
        children: [
          SizedBox(
            height: 137,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,

              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: BubbleStory(name: users[index]),
                );
              },
              itemCount: users.length, // Menambahkan itemCount
            ),
          ),
          const Divider(
            height: 1,
          ),
          UserPost(name: 'Robert')
        ],
      ),
    );
  }
}
