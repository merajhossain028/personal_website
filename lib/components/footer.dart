import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_website/widgets/animated_icon_button.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              AnimatedIconButton(icon: FontAwesomeIcons.facebook),
              SizedBox(width: 10),
              AnimatedIconButton(icon: FontAwesomeIcons.youtube),
              SizedBox(width: 10),
              AnimatedIconButton(icon: FontAwesomeIcons.twitter),
            ],
          ),
          const SizedBox(height: 20),
          const Text('CopyRight 2022 by @merajhossain'),
        ],
      ),
    );
  }
}
