import 'package:flutter/material.dart';

class TopNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;
  final VoidCallback onThemeToggle;
  final bool isDark;

  const TopNavBar({
    super.key,
    required this.selectedIndex,
    required this.onTap,
    required this.onThemeToggle,
    required this.isDark,
  });

  @override
  Widget build(BuildContext context) {
    final sections = ['Home', 'About', 'Skills', 'Projects', 'Contact'];
    return Material(
      elevation: 2,
      child: Container(
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Row(
          children: [
            Text(
              'My Portfolio',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            ...List.generate(sections.length, (i) => TextButton(
                  onPressed: () => onTap(i),
                  child: Text(
                    sections[i],
                    style: TextStyle(
                      color: selectedIndex == i ? Theme.of(context).colorScheme.primary : null,
                      fontWeight: selectedIndex == i ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                )),
            const SizedBox(width: 16),
            IconButton(
              icon: Icon(isDark ? Icons.dark_mode : Icons.light_mode),
              onPressed: onThemeToggle,
              tooltip: 'Toggle Theme',
            ),
          ],
        ),
      ),
    );
  }
}