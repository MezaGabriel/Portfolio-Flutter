import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(
            // name: 'First Landscape',
            imageUrl:
                'https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=2000',
          ),
          SizedBox(height: 10),
          CustomCardType2(
            // name: 'Second Landscape',
            imageUrl:
                'https://backlightblog.com/images/2021/04/landscape-photography-header-2000x1310.jpg',
          ),
          SizedBox(height: 10),
          CustomCardType2(
            name: 'A Beautiful Landscape',
            imageUrl:
                'https://cdna.artstation.com/p/assets/images/images/045/638/174/large/clem-janssens-enviro-rocher-grenouille.jpg?1643193262',
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
