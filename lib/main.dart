import 'package:flutter/material.dart';

import 'login_page.dart';
import 'marksheet_page.dart';

void main() {
  runApp(const BotsNBids());
}

class BotsNBids extends StatelessWidget {
  const BotsNBids({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bots \'n Babes',
      routes: {
        '/login': (context) => const LoginPage(),
        '/marksheet': (context) => const MarksheetPage(),
      },
      initialRoute: '/login',
    );
  }
}
