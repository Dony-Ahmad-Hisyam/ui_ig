import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  const UserPost({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment
          .start, // Menjadikan alignment dari Column ke start (kiri)
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.amber,
                    backgroundImage:
                        NetworkImage('https://i.pravatar.cc/100?u=${name}'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Text(
                      name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(9),
          child: SizedBox(
            height: 300,
            child: Image.network(
              'https://picsum.photos/500/300?randor=$name',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 2),
          child: Row(
            children: const [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Icon(
                  Icons.favorite_outline_outlined,
                  color: Colors.green,
                  size: 28,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Icon(
                  Icons.comment_outlined,
                  color: Colors.green,
                  size: 28,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Icon(
                  Icons.send_outlined,
                  color: Colors.green,
                  size: 28,
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Icon(
                  Icons.bookmark_outline,
                  color: Colors.green,
                  size: 28,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 9),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                '152,322 views Liked by josh richards_831 and',
                style: TextStyle(color: Colors.green),
              ),
              Text(
                '1,655 others',
                style: TextStyle(color: Colors.green),
              ),
              Text('View all 1.2k comments'),
            ],
          ),
        ),
      ],
    );
  }
}
