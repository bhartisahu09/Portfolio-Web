import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
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
                'About Me',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Text(
                'Experienced Software Engineer specializing in Flutter for frontend app development, with expertise in Android and Flutter app development. Demonstrated ability to designs and implement dynamic user interfaces, ensuring seamless users interactions.',
              // 'I am a passionate Flutter developer with experience in building beautiful and responsive apps for web and mobile. I love creating clean UIs and smooth user experiences.',
               // 'Experienced Software Engineer specializing in Flutter for frontend app development, with expertise in Android and Flutter app development. Demonstrated ability to designs and implement dynamic user interfaces, ensuring seamless users interactions.',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}