import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimatedButton extends StatefulWidget {
  const AnimatedButton({super.key});

  @override
  State<AnimatedButton> createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('tapped');
      },
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        decoration: BoxDecoration(
          color: isHover ? Colors.grey[200] : Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isHover ? Colors.grey : Colors.white,
          ),
        ),
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.all(8.0),
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
            ),
          ],
        ),
      ),
    );
  }
}
