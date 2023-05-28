import 'package:flutter/material.dart';

class BubbleStory extends StatelessWidget {
  const BubbleStory({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 38,
            backgroundColor: Colors.pinkAccent,
            child: CircleAvatar(
              radius: 37,
              backgroundImage:
                  NetworkImage('https://picsum.photos/200/300?random=$name'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(name),
          ),
        ],
      ),
    );
  }
}
