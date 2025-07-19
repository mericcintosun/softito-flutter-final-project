import 'package:flutter/material.dart';
import 'package:veve/routes.dart';
import 'package:veve/views/home/home_page.dart';
import 'package:veve/views/auth/login_page.dart';
import 'package:veve/views/auth/register_page.dart';
import 'package:veve/views/profile/profile_page.dart';
import 'package:veve/views/collectibles/collectible_page.dart';
import 'package:veve/views/comics/comics_page.dart';
import 'package:veve/views/comics/comics_detail_page.dart';
import 'package:veve/views/brand/brand_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VeVe',
      initialRoute: Routes.login,
      routes: {
        Routes.home: (context) => const HomePage(),
        Routes.login: (context) => const LoginPage(),
        Routes.register: (context) => const RegisterPage(),
        Routes.profile: (context) => const ProfilePage(),
        Routes.collectibles: (context) => const CollectiblePage(),
        Routes.comics: (context) => const ComicsPage(),
        Routes.brands: (context) => const BrandPage(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == Routes.comicsDetail) {
          final args = settings.arguments as Map<String, dynamic>?;
          if (args != null && args['comic'] != null) {
            return MaterialPageRoute(
              builder: (context) => ComicsDetailPage(comic: args['comic']),
            );
          }
        }
        return null;
      },
    );
  }
}
