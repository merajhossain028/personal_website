import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/animated_button.dart';
import '../widgets/animated_icon_button.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20),
      width: size.width < 900 ? size.width * 0.9 : size.width * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(30),
      height: 700.0,
      child: Column(
        children: [
          Image.asset(
            'assets/images/human.png',
            height: 150,
          ),
          const Text(
            'Md Meraj Hossain',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Text(
            'I\'m a Self-Learner and Flutter Developer from Bangladesh.',
            textAlign: TextAlign.center,
          ),
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Chip(
                  label: Text('Flutter Developer'),
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.all(10),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Chip(
                  label: Text('AVR Developer'),
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.all(10),
                ),
              ),
            ],
          ),
          const Divider(
            color: Colors.black,
            thickness: 1,
          ),
          const AnimatedButton(
            icon: FontAwesomeIcons.facebook,
            title: 'Facebook',
            subtitle: 'meraj.hossain.028',
          ),
          const SizedBox(height: 10),
          const AnimatedButton(
            icon: FontAwesomeIcons.linkedin,
            title: 'LinkedIn',
            subtitle: 'mdmerajhossain028',
          ),
          const SizedBox(height: 10),
          const AnimatedButton(
            icon: FontAwesomeIcons.githubAlt,
            title: 'GitHub',
            subtitle: 'merajhossain028',
          ),
          const Spacer(),
          //DemoWidget(text: 'Vai eda widget'),
          const Divider(
            color: Colors.black,
            thickness: 1,
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              AnimatedIconButton(
                icon: FontAwesomeIcons.facebook,
              ),
              SizedBox(width: 5),
              AnimatedIconButton(
                icon: FontAwesomeIcons.youtube,
              ),
              SizedBox(width: 5),
              AnimatedIconButton(
                icon: FontAwesomeIcons.twitter,
              ),
            ],
          )
        ],
      ),
    );
  }
}
