import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({
    Key? key,
    this.icon,
    this.press,
  }) : super(key: key);

  final Icon? icon;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: CircleAvatar(
        backgroundColor: Colors.grey.shade300,
        child: icon,
      ),
    );
  }
}
