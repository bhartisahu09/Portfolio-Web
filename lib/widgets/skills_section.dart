import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = [
      {'name': 'Flutter', 'icon': Icons.flutter_dash},
      {'name': 'Dart', 'icon': Icons.code},
      {'name': 'Provider', 'icon': Icons.settings},
      {'name': 'Firebase', 'icon': Icons.cloud},
      {'name': 'REST API', 'icon': Icons.http},
      {'name': 'SQLite', 'icon': Icons.storage},
      {'name': 'Java', 'icon': Icons.coffee},
      {'name': 'Kotlin', 'icon': Icons.android},
      {'name': 'UI/UX', 'icon': Icons.design_services},
      {'name': 'Git', 'icon': Icons.merge_type},
      
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Skills',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              LayoutBuilder(
                builder: (context, constraints) {
                  int crossAxisCount = constraints.maxWidth > 600 ? 6 : 3;
                  return GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      childAspectRatio: 2.5,
                    ),
                    itemCount: skills.length,
                    itemBuilder: (context, i) => Chip(
                      avatar: Icon(skills[i]['icon'] as IconData, size: 20),
                      label: Text(skills[i]['name'] as String),
                      backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}