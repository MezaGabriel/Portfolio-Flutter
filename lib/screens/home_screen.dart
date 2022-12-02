import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cinema Movies'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_outlined),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Main Cards
            CardSwiper(),

            // Movie Slider
            MovieSlider(),
            MovieSlider(),
            MovieSlider(),
            MovieSlider(),
            MovieSlider(),
          ],
        ),
      ),
    );
  }
}
