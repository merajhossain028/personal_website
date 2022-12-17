import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      width: size.width < 900 ? size.width * 0.9 : size.width * 0.3,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
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
          Container(
            child: Row(
              children: [
                const Card(
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: FaIcon(
                      FontAwesomeIcons.githubAlt,
                      size: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('GitHub'),
                    Text('merajhossain028'),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}