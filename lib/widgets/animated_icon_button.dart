import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimatedIconButton extends StatefulWidget {
  final IconData icon;
  const AnimatedIconButton({super.key, required this.icon});

  @override
  State<AnimatedIconButton> createState() => _AnimatedIconButtonState();
}

class _AnimatedIconButtonState extends State<AnimatedIconButton> {
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
        child: FaIcon(
          widget.icon,
          color: Colors.blue,
          size: 35,
        ),
      ),
    );
  }
}
