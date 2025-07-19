import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:veve/routes.dart';

class AppBarNav extends StatelessWidget implements PreferredSizeWidget {
  const AppBarNav({super.key});
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  void _showNavigationDrawer(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFF194896),
      builder:
          (context) => Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: const Icon(Icons.home, color: Colors.white),
                  title: const Text(
                    'Home',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushReplacementNamed(context, Routes.home);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.book, color: Colors.white),
                  title: const Text(
                    'Comics',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, Routes.comics);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.collections, color: Colors.white),
                  title: const Text(
                    'Collectibles',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, Routes.collectibles);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.business, color: Colors.white),
                  title: const Text(
                    'Brands',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, Routes.brands);
                  },
                ),
                const Divider(color: Colors.white24),
                ListTile(
                  leading: const Icon(Icons.login, color: Colors.white),
                  title: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, Routes.login);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.person_add, color: Colors.white),
                  title: const Text(
                    'Register',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, Routes.register);
                  },
                ),
              ],
            ),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF194896),
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.menu, color: Colors.white, size: 28),
                  onPressed: () => _showNavigationDrawer(context),
                ),
                GestureDetector(
                  onTap:
                      () =>
                          Navigator.pushReplacementNamed(context, Routes.home),
                  child: Flexible(
                    child: SvgPicture.asset(
                      'assets/const_assets/VeVe-word-mark-1.svg',
                      height: 24,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                GestureDetector(
                  onTap:
                      () =>
                          Navigator.pushReplacementNamed(context, Routes.home),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      'Home',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, Routes.profile),
            child: const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 18,
              child: Icon(Icons.person, color: Colors.black, size: 24),
            ),
          ),
        ],
      ),
    );
  }
}
