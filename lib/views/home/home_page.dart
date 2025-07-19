import 'package:flutter/material.dart';
import 'package:veve/custom_widgets/appbar.dart';
import 'package:veve/custom_widgets/floating_overlay.dart';
import 'package:veve/custom_widgets/footer.dart';
import 'package:veve/views/home/widgets/veve_collectibles.dart';
import 'widgets/hero_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingOverlay(
      child: Scaffold(
        appBar: AppBarNav() as PreferredSizeWidget,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                const Color(0xFF194896),
                const Color(0xFF194896),
                const Color(0xFF0f1729),
              ],
              stops: [0.0, 0.3, 1.0],
            ),
          ),
          child: ListView(
            children: [HeroSection(), VeveCollectibles(), Footer()],
          ),
        ),
      ),
    );
  }
}
