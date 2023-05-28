import 'package:app/widgets/bubble_story.dart';
import 'package:app/widgets/user_post.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List users = [
    'Oid',
    'doplaminggo',
    'anantasya',
    'tokyo',
    'ariltatum',
    'jumanji',
    'adeknya derok',
    'lumayyyyan jelek',
    'mugiono'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Instagram',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          centerTitle: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: const [
            Icon(
              Icons.favorite_border_outlined,
              size: 34,
              color: Colors.black,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(
                Icons.near_me_outlined,
                size: 34,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return BubbleStory(
                    name: users[index],
                  );
                },
                itemCount: users.length,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return UserPost(name: users[index]);
                },
                itemCount: users.length,
              ),
            ),
          ],
        ));
  }
}
