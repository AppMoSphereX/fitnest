import 'package:fitnest/config/theme/theme_extensions.dart';
import 'package:flutter/material.dart';

class GoalItem extends StatelessWidget {
  const GoalItem({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;

    return Container(
      height: 478,
      width: 250,
      decoration: BoxDecoration(
        gradient: palette.primaryGradient,
        borderRadius: BorderRadius.circular(22),
      ),
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          Expanded(child: Image.asset(image)),
          SizedBox(height: 20),
          Text(
            title,
            textAlign: TextAlign.center,
            style: context.typography.mediumText.copyWith(
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 2),
          Container(width: 50, height: 1, color: Colors.white),
          SizedBox(height: 20),
          Text(
            description,
            textAlign: TextAlign.center,
            style: context.typography.smallText.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
