import 'package:flutter/material.dart';
import 'package:portfolio/widgets/education_section.dart';
import 'package:provider/provider.dart';
import '../providers/theme_provider.dart';
import '../widgets/top_nav_bar.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/hero_section.dart';
import '../widgets/about_section.dart';
import '../widgets/skills_section.dart';
import '../widgets/projects_section.dart';
import '../widgets/contact_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final _scrollController = ScrollController();
  final List<GlobalKey> _sectionKeys = List.generate(6, (_) => GlobalKey());

  void _onNavTap(int index) {
    setState(() => _selectedIndex = index);
    Scrollable.ensureVisible(
      _sectionKeys[index].currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final isWeb = MediaQuery.of(context).size.width > 700;
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: isWeb
          ? PreferredSize(
              preferredSize: const Size.fromHeight(60),
              child: TopNavBar(
                selectedIndex: _selectedIndex,
                onTap: _onNavTap,
                onThemeToggle: themeProvider.toggleTheme,
                isDark: themeProvider.themeMode == ThemeMode.dark,
              ),
            )
          : null,
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            HeroSection(key: _sectionKeys[0]),
            AboutSection(key: _sectionKeys[1]),
            EducationSection(key: _sectionKeys[2]),
            SkillsSection(key: _sectionKeys[3]),
            ProjectsSection(key: _sectionKeys[4]),
            ContactSection(key: _sectionKeys[5]),
          ],
        ),
      ),
      bottomNavigationBar: isWeb
          ? null
          : BottomNavBar(
              selectedIndex: _selectedIndex,
              onTap: _onNavTap,
              onThemeToggle: themeProvider.toggleTheme,
              isDark: themeProvider.themeMode == ThemeMode.dark,
            ),
    );
  }
}