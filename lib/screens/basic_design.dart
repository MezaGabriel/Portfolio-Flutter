import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Image
          Image(image: AssetImage('assets/landscape.jpg')),

          // Tittle
          Title(),

          // Button Section
          ButtonSection(),

          // Description
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
                'Eu esse officia voluptate pariatur nulla. Reprehenderit mollit cupidatat quis laborum irure irure laboris pariatur esse. Sit ut esse sit occaecat aliquip. Enim in laboris aute irure duis ullamco ex. Reprehenderit magna duis laboris eiusmod irure adipisicing tempor ad eiusmod tempor qui culpa pariatur sint. Adipisicing adipisicing occaecat cillum deserunt aliqua.'),
          )
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Oeschinen Lake Campground',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Kandersteg, Switzerland',
                  style: TextStyle(color: Colors.black45)),
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red),
          Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(icon: Icons.call, text: 'CALL'),
          CustomButton(icon: Icons.send, text: 'ROUTE'),
          CustomButton(icon: Icons.share, text: 'SHARE'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(this.icon, color: Colors.blue),
        Text(this.text, style: TextStyle(color: Colors.blue)),
      ],
    );
  }
}
