import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  const UserPost({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 15,
            top: 5,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundImage: NetworkImage(
                        'https://picsum.photos/200/300?random=$name'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(right: 0),
                child: Icon(Icons.more_vert),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        SizedBox(
          height: 300,
          child: Image.network(
            'https://picsum.photos/600/300?random=$name',
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          child: Row(children: const [
            Icon(Icons.favorite_border),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.mode_comment_outlined),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.send_outlined),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          child: Row(
            children: const [
              Text('Like by '),
              Text(
                'tokyo',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(' and '),
              Text(
                'Others',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: RichText(
            text: const TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: 'PacarBaru ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: 'Fotonya bagus banget sayang'),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'View all comments',
            style: TextStyle(color: Colors.black45),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Text(
            '23 Hours ago ',
            style: TextStyle(
              color: Colors.black45,
              fontSize: 10,
            ),
          ),
        )
      ],
    );
  }
}
