import 'package:fitnest/domain/models/user/goal.dart';
import 'package:fitnest/ui/profile_completion/widgets/goal_item.dart';
import 'package:flutter/material.dart';

class GoalCarousel extends StatefulWidget {
  const GoalCarousel({super.key, required this.goals});

  final List<GoalData> goals;

  @override
  State<GoalCarousel> createState() => _GoalCarouselState();
}

class _GoalCarouselState extends State<GoalCarousel> {
  late PageController _pageController;
  double _currentPageOffset = 1.0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 1, viewportFraction: 0.75);
    _pageController.addListener(_updatePageOffset);
  }

  @override
  void dispose() {
    _pageController.removeListener(_updatePageOffset);
    _pageController.dispose();
    super.dispose();
  }

  void _updatePageOffset() {
    setState(() {
      _currentPageOffset = _pageController.page ?? 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 478,
      child: PageView.builder(
        controller: _pageController,
        itemCount: widget.goals.length,
        itemBuilder: (context, index) {
          final actualIndex = index % widget.goals.length;
          final goal = widget.goals[actualIndex];
          final itemPosition = index.toDouble();
          final distanceFromCenter = (itemPosition - _currentPageOffset).abs();
          final opacity = (1.0 - distanceFromCenter * 0.4).clamp(0.3, 1.0);
          final scale = (1.0 - distanceFromCenter * 0.1).clamp(0.8, 1.0);

          return Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: Transform.scale(
              scale: scale,
              child: Opacity(
                opacity: opacity,
                child: GoalItem(
                  image: goal.image,
                  title: goal.title,
                  description: goal.description,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
