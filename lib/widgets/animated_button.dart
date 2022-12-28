import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimatedButton extends StatefulWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  const AnimatedButton({super.key, required this.icon, required this.title, required this.subtitle});

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
             Card(
              child: Padding(
                padding:const EdgeInsets.all(12.0),
                child: FaIcon(
                  widget.icon,
                  size: 20,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.title),
                Text(widget.subtitle),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
