import 'package:flutter/material.dart';

import 'presentation/pages/portal_home_page.dart';

class UCBPortalApp extends StatelessWidget {
  const UCBPortalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UCB Portal Académico',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1A3A6B)),
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      home: const PortalHomePage(),
    );
  }
}
