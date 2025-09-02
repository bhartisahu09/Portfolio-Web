// import 'package:flutter/material.dart';

// class ContactSection extends StatefulWidget {
//   const ContactSection({super.key});

//   @override
//   State<ContactSection> createState() => _ContactSectionState();
// }

// class _ContactSectionState extends State<ContactSection> {
//   final _formKey = GlobalKey<FormState>();
//   String _name = '';
//   String _email = '';
//   String _message = '';

//   void _submit() {
//     if (_formKey.currentState!.validate()) {
//       _formKey.currentState!.save();
//       // Use the fields to avoid linter warnings
//       debugPrint('Name: $_name');
//       debugPrint('Email: $_email');
//       debugPrint('Message: $_message');
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Message sent! (Demo only)')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16),
//       child: Card(
//         elevation: 2,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//         child: Padding(
//           padding: const EdgeInsets.all(24.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Contact',
//                 style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 16),
//               LayoutBuilder(
//                 builder: (context, constraints) {
//                   // Responsive layout
//                   if (constraints.maxWidth > 600) {
//                     // Desktop layout
//                     return Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Expanded(
//                           flex: 2,
//                           child: Form(
//                             key: _formKey,
//                             child: Column(
//                               children: [
//                                 TextFormField(
//                                   decoration: const InputDecoration(labelText: 'Name'),
//                                   onSaved: (v) => _name = v ?? '',
//                                   validator: (v) => v == null || v.isEmpty ? 'Enter your name' : null,
//                                 ),
//                                 const SizedBox(height: 12),
//                                 TextFormField(
//                                   decoration: const InputDecoration(labelText: 'Email'),
//                                   onSaved: (v) => _email = v ?? '',
//                                   validator: (v) => v == null || !v.contains('@') ? 'Enter a valid email' : null,
//                                 ),
//                                 const SizedBox(height: 12),
//                                 TextFormField(
//                                   decoration: const InputDecoration(labelText: 'Message'),
//                                   maxLines: 3,
//                                   onSaved: (v) => _message = v ?? '',
//                                   validator: (v) => v == null || v.isEmpty ? 'Enter your message' : null,
//                                 ),
//                                 const SizedBox(height: 16),
//                                 ElevatedButton(
//                                   onPressed: _submit,
//                                   child: const Text('Send'),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         const SizedBox(width: 32),
//                         Expanded(
//                           flex: 1,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Row(
//                                 children: [
//                                   const Icon(Icons.email, size: 20),
//                                   const SizedBox(width: 8),
//                                   Text('your.email@example.com'),
//                                 ],
//                               ),
//                               const SizedBox(height: 12),
//                               Row(
//                                 children: [
//                                   const Icon(Icons.phone, size: 20),
//                                   const SizedBox(width: 8),
//                                   Text('+91 12345 67890'),
//                                 ],
//                               ),
//                               const SizedBox(height: 12),
//                               Row(
//                                 children: [
//                                   IconButton(
//                                     icon: const Icon(Icons.linked_camera),
//                                     onPressed: () {},
//                                     tooltip: 'LinkedIn',
//                                   ),
//                                   IconButton(
//                                     icon: const Icon(Icons.web),
//                                     onPressed: () {},
//                                     tooltip: 'Website',
//                                   ),
//                                   IconButton(
//                                     icon: const Icon(Icons.code),
//                                     onPressed: () {},
//                                     tooltip: 'GitHub',
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     );
//                   } else {
//                     // Mobile layout
//                     return Column(
//                       children: [
//                         Form(
//                           key: _formKey,
//                           child: Column(
//                             children: [
//                               TextFormField(
//                                 decoration: const InputDecoration(labelText: 'Name'),
//                                 onSaved: (v) => _name = v ?? '',
//                                 validator: (v) => v == null || v.isEmpty ? 'Enter your name' : null,
//                               ),
//                               const SizedBox(height: 12),
//                               TextFormField(
//                                 decoration: const InputDecoration(labelText: 'Email'),
//                                 onSaved: (v) => _email = v ?? '',
//                                 validator: (v) => v == null || !v.contains('@') ? 'Enter a valid email' : null,
//                               ),
//                               const SizedBox(height: 12),
//                               TextFormField(
//                                 decoration: const InputDecoration(labelText: 'Message'),
//                                 maxLines: 3,
//                                 onSaved: (v) => _message = v ?? '',
//                                 validator: (v) => v == null || v.isEmpty ? 'Enter your message' : null,
//                               ),
//                               const SizedBox(height: 16),
//                               ElevatedButton(
//                                 onPressed: _submit,
//                                 child: const Text('Send'),
//                               ),
//                             ],
//                           ),
//                         ),
//                         const SizedBox(height: 24),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               children: [
//                                 const Icon(Icons.email, size: 20),
//                                 const SizedBox(width: 8),
//                                 Text('your.email@example.com'),
//                               ],
//                             ),
//                             const SizedBox(height: 12),
//                             Row(
//                               children: [
//                                 const Icon(Icons.phone, size: 20),
//                                 const SizedBox(width: 8),
//                                 Text('+91 12345 67890'),
//                               ],
//                             ),
//                             const SizedBox(height: 12),
//                             Row(
//                               children: [
//                                 IconButton(
//                                   icon: const Icon(Icons.linked_camera_outlined),
//                                   onPressed: () {},
//                                   tooltip: 'LinkedIn',
//                                 ),
//                                 IconButton(
//                                   icon: const Icon(Icons.web),
//                                   onPressed: () {},
//                                   tooltip: 'Website',
//                                 ),
//                                 IconButton(
//                                   icon: const Icon(Icons.code),
//                                   onPressed: () {},
//                                   tooltip: 'GitHub',
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ],
//                     );
//                   }
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// // import 'package:flutter/material.dart';
// // import 'package:url_launcher/url_launcher.dart';

// // class ContactSection extends StatefulWidget {
// //   const ContactSection({super.key});

// //   @override
// //   State<ContactSection> createState() => _ContactSectionState();
// // }

// // class _ContactSectionState extends State<ContactSection> {
// //   final _formKey = GlobalKey<FormState>();
// //   String _name = '';
// //   String _email = '';
// //   String _message = '';

// //   Future<void> _sendEmail() async {
// //     final Uri emailUri = Uri(
// //       scheme: 'mailto',
// //       path: 'xyz@gmail.com', // 👈 yaha apna email daal do
// //       queryParameters: {
// //         'subject': 'New Contact Form Message',
// //         'body': 'Name: $_name\nEmail: $_email\nMessage: $_message',
// //       },
// //     );

// //     if (await canLaunchUrl(emailUri)) {
// //       await launchUrl(emailUri);
// //     } else {
// //       ScaffoldMessenger.of(context).showSnackBar(
// //         const SnackBar(content: Text('Could not open email app')),
// //       );
// //     }
// //   }

// //   void _submit() {
// //     if (_formKey.currentState!.validate()) {
// //       _formKey.currentState!.save();
// //       _sendEmail(); // 👈 mail bhejne ka function call hoga
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Padding(
// //       padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16),
// //       child: Card(
// //         elevation: 2,
// //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
// //         child: Padding(
// //           padding: const EdgeInsets.all(24.0),
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               Text(
// //                 'Contact',
// //                 style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
// //               ),
// //               const SizedBox(height: 16),
// //               Form(
// //                 key: _formKey,
// //                 child: Column(
// //                   children: [
// //                     TextFormField(
// //                       decoration: const InputDecoration(labelText: 'Name'),
// //                       onSaved: (v) => _name = v ?? '',
// //                       validator: (v) => v == null || v.isEmpty ? 'Enter your name' : null,
// //                     ),
// //                     const SizedBox(height: 12),
// //                     TextFormField(
// //                       decoration: const InputDecoration(labelText: 'Email'),
// //                       onSaved: (v) => _email = v ?? '',
// //                       validator: (v) => v == null || !v.contains('@') ? 'Enter a valid email' : null,
// //                     ),
// //                     const SizedBox(height: 12),
// //                     TextFormField(
// //                       decoration: const InputDecoration(labelText: 'Message'),
// //                       maxLines: 3,
// //                       onSaved: (v) => _message = v ?? '',
// //                       validator: (v) => v == null || v.isEmpty ? 'Enter your message' : null,
// //                     ),
// //                     const SizedBox(height: 16),
// //                     ElevatedButton(
// //                       onPressed: _submit,
// //                       child: const Text('Send'),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatefulWidget {
  const ContactSection({super.key});

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _email = '';
  String _message = '';

  final String linkedInUrl =
      "https://www.linkedin.com/in/bharti-sahu-2a2aa41b1/";
  final String githubUrl = "https://github.com/bhartisahu09";
  final String websiteUrl = "https://yourwebsite.com";

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Could not open $url')),
      );
    }
  }

  Future<void> _sendEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'xyz@gmail.com', // 👈 yaha apna email daalo
      queryParameters: {
        'subject': 'New Contact Form Message',
        'body': 'Name: $_name\nEmail: $_email\nMessage: $_message',
      },
    );

    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Could not open email app')),
      );
    }
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      _sendEmail(); // 👈 email send function call hoga
    }
  }

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
                'Contact',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              LayoutBuilder(
                builder: (context, constraints) {
                  // Responsive layout
                  if (constraints.maxWidth > 600) {
                    // Desktop layout
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration:
                                      const InputDecoration(labelText: 'Name'),
                                  onSaved: (v) => _name = v ?? '',
                                  validator: (v) => v == null || v.isEmpty
                                      ? 'Enter your name'
                                      : null,
                                ),
                                const SizedBox(height: 12),
                                TextFormField(
                                  decoration:
                                      const InputDecoration(labelText: 'Email'),
                                  onSaved: (v) => _email = v ?? '',
                                  validator: (v) =>
                                      v == null || !v.contains('@')
                                          ? 'Enter a valid email'
                                          : null,
                                ),
                                const SizedBox(height: 12),
                                TextFormField(
                                  decoration: const InputDecoration(
                                      labelText: 'Message'),
                                  maxLines: 3,
                                  onSaved: (v) => _message = v ?? '',
                                  validator: (v) => v == null || v.isEmpty
                                      ? 'Enter your message'
                                      : null,
                                ),
                                const SizedBox(height: 16),
                                ElevatedButton(
                                  onPressed: _submit,
                                  child: const Text('Send'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 32),
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Icon(Icons.email, size: 20),
                                  const SizedBox(width: 8),
                                  Text('bharti.sahu9011@gmail.com'),
                                ],
                              ),
                              const SizedBox(height: 12),
                              Row(
                                children: [
                                  const Icon(Icons.phone, size: 20),
                                  const SizedBox(width: 8),
                                  Text('+91 12345 67890'),
                                ],
                              ),
                              const SizedBox(height: 12),
                              Row(
                                children: [
                                  IconButton(
                                    icon: Image.asset(
                                      'assets/linkedin.png',
                                      height: 50,
                                      width: 50,
                                    ),
                                    onPressed: () => _launchURL(linkedInUrl),
                                    tooltip: 'LinkedIn',
                                  ),
                                  IconButton(
                                    icon: Image.asset(
                                      'assets/github.png',
                                      height: 50,
                                      width: 50,
                                    ),
                                    onPressed: () => _launchURL(githubUrl),
                                    tooltip: 'GitHub',
                                  ),
                                  IconButton(
                                    icon: Image.asset(
                                      'assets/web.jpg',
                                      height: 50,
                                      width: 50,
                                    ),
                                    onPressed: () => _launchURL(websiteUrl),
                                    tooltip: 'Website',
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    );
                  } else {
                    // Mobile layout
                    return Column(
                      children: [
                        Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              TextFormField(
                                decoration:
                                    const InputDecoration(labelText: 'Name'),
                                onSaved: (v) => _name = v ?? '',
                                validator: (v) => v == null || v.isEmpty
                                    ? 'Enter your name'
                                    : null,
                              ),
                              const SizedBox(height: 12),
                              TextFormField(
                                decoration:
                                    const InputDecoration(labelText: 'Email'),
                                onSaved: (v) => _email = v ?? '',
                                validator: (v) => v == null || !v.contains('@')
                                    ? 'Enter a valid email'
                                    : null,
                              ),
                              const SizedBox(height: 12),
                              TextFormField(
                                decoration:
                                    const InputDecoration(labelText: 'Message'),
                                maxLines: 3,
                                onSaved: (v) => _message = v ?? '',
                                validator: (v) => v == null || v.isEmpty
                                    ? 'Enter your message'
                                    : null,
                              ),
                              const SizedBox(height: 16),
                              ElevatedButton(
                                onPressed: _submit,
                                child: const Text('Send'),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 24),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.email, size: 20),
                                const SizedBox(width: 8),
                                Text('bharti.sahu9011@gmail.com'),
                              ],
                            ),
                            const SizedBox(height: 12),
                            Row(
                              children: [
                                const Icon(Icons.phone, size: 20),
                                const SizedBox(width: 8),
                                Text('+91 12345 67890'),
                              ],
                            ),
                            const SizedBox(height: 12),
                            Row(
                              children: [
                                IconButton(
                                  icon: Image.asset(
                                    'assets/linkedin.png',
                                    height: 50,
                                    width: 50,
                                  ),
                                  onPressed: () => _launchURL(linkedInUrl),
                                  tooltip: 'LinkedIn',
                                ),
                                IconButton(
                                  icon: Image.asset(
                                    'assets/github.png',
                                    height: 50,
                                    width: 50,
                                  ),
                                  onPressed: () => _launchURL(githubUrl),
                                  tooltip: 'GitHub',
                                ),
                                IconButton(
                                  icon: Image.asset(
                                    'assets/web.jpg',
                                    height: 50,
                                    width: 50,
                                  ),
                                  onPressed: () => _launchURL(websiteUrl),
                                  tooltip: 'Website',
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
