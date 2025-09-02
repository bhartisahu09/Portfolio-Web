// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// class ProjectsSection extends StatelessWidget {
//   const ProjectsSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final List<Map<String, dynamic>> projects = [
//       {
//         'title': 'Portfolio Website',
//         'description': 'A responsive portfolio website built with Flutter for web and mobile.',
//         'image': 'assets/portfolio.png',
//         'github': 'https://github.com/yourusername/portfolio-website',
//       },
//       {
//         'title': 'Chat App',
//         'description': 'Chat Application is a Flutter-based mobile app that enables users to send and receive messages in real time. The app uses Firebase for authentication and database services, and SharedPreferences for local session management.',
//         'image': 'assets/chat1.png',
//         'github': 'https://github.com/bhartisahu09/Chat_Application',
//       },
//       {
//         'title': 'E-commerce App',
//         'description': 'A complete Flutter Ecommerce & Food Delivery App built with Provider State Management, integrated with Firebase Authentication and Google Sign-In, along with a clean and responsive UI. The app allows users to browse products, add to cart, place orders, and get real-time delivery updates.',
//         'image': 'assets/delivery_app.png',
//         'github': 'https://github.com/bhartisahu09/Ecommerce-Food-Delivery-App-with-Firebase-Integration',
//       },
//       {
//         'title': 'Music Player App',
//         'description': 'music player App with diffrent categories, favorites, search, playlist playback, and a modern UI. Built with Provider, just_audio, and audio_session.',
//         'image': 'assets/music_player.png',
//         'github': 'https://github.com/bhartisahu09/Music-Player-App',
//       },
//       {
//         'title': 'Food Receipe App',
//         'description': 'A complete Flutter Indian Recipe App with authentic Indian cuisine, modern UI design, state management using Provider, and real-time data storage with Firebase.',
//         'image': 'assets/receipe.png',
//         'github': 'https://github.com/bhartisahu09/Reciepe-App-Firebase-Integration',
//       },
//       {
//         'title': 'ToDo List App (Offline)',
//         'description': 'Flutter ToDo List app with offline support using SQLite, state management with Provider, and a clean, user-friendly UI.',
//         'image': 'assets/todolist.png',
//         'github': 'https://github.com/bhartisahu09/Todolist_App',
//       },
//     ];
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Projects',
//             style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
//           ),
//           const SizedBox(height: 16),
//           LayoutBuilder(
//             builder: (context, constraints) {
//               int crossAxisCount = constraints.maxWidth > 900
//                   ? 3
//                   : constraints.maxWidth > 600
//                       ? 2
//                       : 1;
//               return GridView.builder(
//                 shrinkWrap: true,
//                 physics: const NeverScrollableScrollPhysics(),
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: crossAxisCount,
//                   mainAxisSpacing: 24,
//                   crossAxisSpacing: 24,
//                   childAspectRatio: 0.85,
//                 ),
//                 itemCount: projects.length,
//                 itemBuilder: (context, i) => _AnimatedProjectCard(
//                   title: projects[i]['title'] as String,
//                   description: projects[i]['description'] as String,
//                   image: projects[i]['image'] as String,
//                   githubUrl: projects[i]['github'] as String,
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _AnimatedProjectCard extends StatefulWidget {
//   final String title;
//   final String description;
//   final String image;
//   final String githubUrl;
//   const _AnimatedProjectCard({
//     required this.title, 
//     required this.description, 
//     required this.image,
//     required this.githubUrl,
//   });

//   @override
//   State<_AnimatedProjectCard> createState() => _AnimatedProjectCardState();
// }

// class _AnimatedProjectCardState extends State<_AnimatedProjectCard> with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _fadeIn;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 800));
//     _fadeIn = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
//     _controller.forward();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   void _openGitHub() async {
//     if (await canLaunchUrl(Uri.parse(widget.githubUrl))) {
//       await launchUrl(Uri.parse(widget.githubUrl));
//     } else {
//       if (mounted) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(
//             content: Text('Could not open GitHub link'),
//             backgroundColor: Colors.red,
//           ),
//         );
//       }
//     }
//   }

// //   @override
// //   Widget build(BuildContext context) {
// //     //final screenWidth = MediaQuery.of(context).size.width;
// //   final screenHeight = MediaQuery.of(context).size.height;
// //     return FadeTransition(
// //       opacity: _fadeIn,
// //       child: Card(
// //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
// //         elevation: 4,
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             ClipRRect(
// //               borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
// //               child: Image.asset(
// //                 widget.image,
// //                 //height: 276,
// //                 height: screenHeight * 0.3,
// //                 width: double.infinity,
// //                 fit: BoxFit.cover,
// //               ),
// //             ),
// //             Padding(
// //               padding: const EdgeInsets.all(16.0),
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   Text(
// //                     widget.title,
// //                     style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
// //                   ),
// //                   const SizedBox(height: 8),
// //                   Text(
// //                     widget.description,
// //                     style: Theme.of(context).textTheme.bodyMedium,
// //                     maxLines: 2,
// //                     overflow: TextOverflow.ellipsis,
// //                   ),
// //                   const SizedBox(height: 16),
// //                   // GitHub Button
// //                   SizedBox(
// //                     width: double.infinity,
// //                     child: ElevatedButton.icon(
// //                       onPressed: _openGitHub,
// //                       icon: const Icon(Icons.code, size: 18),
// //                       label: const Text(
// //                         'View on GitHub',
// //                         style: TextStyle(fontSize: 12),
// //                       ),
// //                       style: ElevatedButton.styleFrom(
// //                         backgroundColor: const Color.fromARGB(255, 173, 173, 173),
// //                         foregroundColor: Colors.white,
// //                         padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
// //                         shape: RoundedRectangleBorder(
// //                           borderRadius: BorderRadius.circular(8),
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// @override
// Widget build(BuildContext context) {
//   final screenWidth = MediaQuery.of(context).size.width;
//   final screenHeight = MediaQuery.of(context).size.height;

//   return FadeTransition(
//     opacity: _fadeIn,
//     child: Card(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//       elevation: 4,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           ClipRRect(
//             borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
//             child: Image.asset(
//               widget.image,
//               height: MediaQuery.of(context).size.height * 0.25,

//               width: double.infinity,
//               fit: BoxFit.cover,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   widget.title,
//                   style: Theme.of(context)
//                       .textTheme
//                       .titleMedium
//                       ?.copyWith(fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(height: 8),
//                 Text(
//                   widget.description,
//                   style: Theme.of(context).textTheme.bodyMedium,
//                   maxLines: 2,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//                 const SizedBox(height: 16),
//                 // GitHub Button
//                 SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton.icon(
//                     onPressed: _openGitHub,
//                     icon: const Icon(Icons.code, size: 18),
//                     label: const Text(
//                       'View on GitHub',
//                       style: TextStyle(fontSize: 12),
//                     ),
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor:
//                           const Color.fromARGB(255, 173, 173, 173),
//                       foregroundColor: Colors.white,
//                       padding: EdgeInsets.symmetric(
//                         horizontal: screenWidth * 0.02, // responsive padding
//                         vertical: screenHeight * 0.015,
//                       ),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }
// }


import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> projects = [
      {
        'title': 'Portfolio Website',
        'description':
            'A responsive portfolio website built with Flutter for web and mobile.',
        'image': 'assets/portfolio_p.png',
        'github': 'https://github.com/bhartisahu09/Portfolio-Web',
      },
      {
        'title': 'Chat App',
        'description': 'Chat Application is a Flutter-based mobile app that enables users to send and receive messages in real time. The app uses Firebase for authentication and database services, and SharedPreferences for local session management.',
        'image': 'assets/chat_p.png',
        'github': 'https://github.com/bhartisahu09/Chat_Application',
      },
      {
        'title': 'E-commerce App',
               'description': 'A complete Flutter Ecommerce & Food Delivery App built with Provider State Management, integrated with Firebase Authentication and Google Sign-In, along with a clean and responsive UI. The app allows users to browse products, add to cart, place orders, and get real-time delivery updates.',
        'image': 'assets/delivery_p.png',
        'github':
            'https://github.com/bhartisahu09/Ecommerce-Food-Delivery-App-with-Firebase-Integration',
      },
      {
        'title': 'Music Player App',
        'description':
            'Music player with playlists, favorites, search, and smooth playback built with just_audio.',
        'image': 'assets/music_p.png',
        'github': 'https://github.com/bhartisahu09/Music-Player-App',
      },
      {
        'title': 'Food Recipe App',
         'description': 'A complete Flutter Indian Recipe App with authentic Indian cuisine, modern UI design, state management using Provider, and real-time data storage with Firebase.',
        'image': 'assets/receipe_p.png',
        'github':
            'https://github.com/bhartisahu09/Reciepe-App-Firebase-Integration',
      },
      {
        'title': 'ToDo List App (Offline)',
        'description':
            'Offline ToDo List app using SQLite + Provider with a clean minimal design.',
        'image': 'assets/todolist_p.png',
        'github': 'https://github.com/bhartisahu09/Todolist_App',
      },
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Projects',
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 24),
          LayoutBuilder(
            builder: (context, constraints) {
              int crossAxisCount = constraints.maxWidth > 1000
                  ? 3
                  : constraints.maxWidth > 650
                      ? 2
                      : 1;
              return GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  mainAxisSpacing: 24,
                  crossAxisSpacing: 24,
                  childAspectRatio: 0.85,
                ),
                itemCount: projects.length,
                itemBuilder: (context, i) => _ProjectCard(
                  title: projects[i]['title'] as String,
                  description: projects[i]['description'] as String,
                  image: projects[i]['image'] as String,
                  githubUrl: projects[i]['github'] as String,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _ProjectCard extends StatefulWidget {
  final String title;
  final String description;
  final String image;
  final String githubUrl;
  const _ProjectCard({
    required this.title,
    required this.description,
    required this.image,
    required this.githubUrl,
  });

  @override
  State<_ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<_ProjectCard>
    with SingleTickerProviderStateMixin {
  bool _hovering = false;

  void _openGitHub() async {
    final uri = Uri.parse(widget.githubUrl);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Could not open GitHub link'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return MouseRegion(
      onEnter: (_) => setState(() => _hovering = true),
      onExit: (_) => setState(() => _hovering = false),
      child: AnimatedScale(
        scale: _hovering ? 1.03 : 1.0,
        duration: const Duration(milliseconds: 200),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          elevation: _hovering ? 12 : 4,
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              // Image with proper aspect ratio
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.asset(
                  widget.image,
                  width: double.infinity,
                  fit: BoxFit.contain, // image full dikhega distort na hoke
                ),
              ),
              // Title + Description
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(height: 8),
                      Expanded(
                        child: Text(
                          widget.description,
                          style: Theme.of(context).textTheme.bodyMedium,
                          maxLines: screenWidth < 600 ? 6 : 10,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              
              
              // Button
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: _openGitHub,
                    icon: const Icon(Icons.code, size: 18),
                    label: Text(
                      'View on GitHub',
                      style: TextStyle(
                        fontSize: screenWidth < 500 ? 12 : 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(
                        horizontal: screenWidth < 500 ? 10 : 16,
                        vertical: screenWidth < 500 ? 10 : 14,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
