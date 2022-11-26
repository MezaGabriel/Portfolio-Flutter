import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stan Lee'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              child: const Text('SL'),
              backgroundColor: Colors.teal[700],
            ),
          ),
        ],
      ),
      body: Center(
        child: CircleAvatar(
          maxRadius: 110,
          backgroundColor: Colors.teal[700],
          backgroundImage: const NetworkImage(
              'https://i.blogs.es/85aa44/stan-lee/1366_2000.jpg'),
        ),
      ),
    );
  }
}
