import 'package:flutter/material.dart';
import 'package:portfolio/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Checks'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider.adaptive(
              min: 50,
              max: 400,
              activeColor: AppTheme.primary,
              value: _sliderValue,
              onChanged: (value) {
                _sliderValue = value;
                setState(() {});
              },
            ),
            Image(
              image: const NetworkImage(
                  'https://i.pinimg.com/originals/2f/ea/a3/2feaa346bd96e29c20ccacf92acd7f16.png'),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
