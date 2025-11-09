enum Goal { improveShape, leanAndTone, loseFat }

class GoalData {
  const GoalData({
    required this.goal,
    required this.image,
    required this.title,
    required this.description,
  });

  final Goal goal;
  final String image;
  final String title;
  final String description;
}
